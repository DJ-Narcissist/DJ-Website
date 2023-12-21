const userModel = require('../Models/user');

async function getUser(req,res) {
    try {
        const user = await userModel.getUserById(req.params.id);
        res.json(user);
    } catch (error) {
        res.status(500).send(error.message);
    }
}

module.exports = { getUser };
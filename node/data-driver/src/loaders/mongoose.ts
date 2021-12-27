import mongoose from "mongoose";

export default async function configureMongoose() {
  await mongoose.connect(`${process.env.MONGO_URL}`);
}

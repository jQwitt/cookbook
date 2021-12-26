import mongoose from "mongoose";

export default async function configureMongoose() {
  await mongoose.connect("mongodb://localhost:27017/test");
}

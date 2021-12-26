import mongoose from "mongoose";

const SampleSchema = new mongoose.Schema({
  name: String,
});

const SampleModel = mongoose.model("Sample", SampleSchema);

export default SampleModel;

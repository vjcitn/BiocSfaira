
#' hand back ui.UserInterface from sfaira from specified basilisk environment
#' @note sfaira 0.3.12, tensorflow 2.8.0, protobuf 3.20.0
#' @export
sfaira_ui = function() {
 proc = basilisk::basiliskStart(bsklenv, testload="sfaira") # avoid package-specific import
 #on.exit(basilisk::basiliskStop(proc))
 basilisk::basiliskRun(proc, function() {
     sfaira = reticulate::import("sfaira")
     sfaira$ui$UserInterface(sfaira_repo=TRUE)
   })
}


#' look at list of embeddings
#' @import reticulate
#' @export
list_embedding_models = function() {
  sfaira = reticulate::import("sfaira")
  ui = sfaira$ui$UserInterface(sfaira_repo=TRUE)
  ui$zoo_embedding$available_model_ids
}

#' look at list of celltypers
#' @import reticulate
#' @export
list_celltype_models = function() {
  sfaira = reticulate::import("sfaira")
  ui = sfaira$ui$UserInterface(sfaira_repo=TRUE)
  ui$zoo_celltype$available_model_ids
}

#' scanpy reference
#' @export
scanpy_ref = function() {
 sc = reticulate::import("scanpy")
 sc
}

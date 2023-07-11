#' hand reference to ui back to R
#' @export
sfaira_ui = function() {
  sfaira = reticulate::import("sfaira")
  sfaira$ui$UserInterface(sfaira_repo=TRUE)
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

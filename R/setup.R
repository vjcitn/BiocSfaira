
#' look at list of embeddings
#' @import reticulate
#' @export
list_embedding_models = function() {
  sfaira = import("sfaira")
  ui = sfaira$ui$UserInterface(sfaira_repo=True)
  ui$zoo_embedding$available_model_ids
}


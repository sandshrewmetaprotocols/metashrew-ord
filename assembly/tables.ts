import { IndexPointer } from "metashrew-as/assembly/indexer/tables";
import { BST } from "metashrew-as/assembly/indexer/bst";

export const SAT_TO_OUTPOINT = BST.at<u64>(IndexPointer.for("/outpoint/bysatrange/"));
export const OUTPOINT_TO_SAT = IndexPointer.for("/sat/by/outpoint/");
export const OUTPOINT_TO_VALUE = IndexPointer.for("/value/byoutpoint/");
export const OUTPOINT_TO_SEQUENCE_NUMBERS = IndexPointer.for("/sequencenumbers/byoutpoint");
export const HEIGHT_TO_BLOCKHASH = IndexPointer.for("/blockhash/byheight/");
export const BLOCKHASH_TO_HEIGHT = IndexPointer.for("/height/byblockhash/");
export const STARTING_SAT = IndexPointer.for("/startingsat");
export const INSCRIPTION_ID_TO_INSCRIPTION = IndexPointer.for("/inscription/byid/");
export const SATPOINT_TO_INSCRIPTION_ID = IndexPointer.for("/inscriptionid/bysatpoint");
export const SATPOINT_TO_SAT = IndexPointer.for("/sat/bysatpoint");
export const INSCRIPTION_ID_TO_SATPOINT = IndexPointer.for("/satpoint/byinscriptionid/");
export const INSCRIPTION_ID_TO_BLOCKHEIGHT = IndexPointer.for("/height/byinscription/");
export const HEIGHT_TO_INSCRIPTION_IDS = IndexPointer.for("/inscriptionids/byheight/")
export const NEXT_SEQUENCE_NUMBER = IndexPointer.for("/nextsequence");
export const SEQUENCE_NUMBER_TO_INSCRIPTION_ID = IndexPointer.for("/inscriptionid/bysequence/");
export const INSCRIPTION_ID_TO_SEQUENCE_NUMBER = IndexPointer.for("/sequence/byinscriptionid/");

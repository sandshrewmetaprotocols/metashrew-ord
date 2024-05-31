import { BST } from "metashrew-as/assembly/indexer/bst";
import { Box, RCBox } from "metashrew-as/assembly/utils/box";
import { primitiveToBuffer } from "metashrew-as/assembly/utils/utils";

export function rangeLength<K>(bst: BST<K>, key: K, max: K): K {
  const greater = bst.seekGreater(key);
  const end = greater === 0 ? max : greater;
  return end - key;
}

export function min<T>(a: T, b: T): T {
  if (a > b) return b;
  return a;
}

export function max<T>(a: T, b: T): T {
  if (a < b) return b;
  return a;
}

export function flatten<T>(ary: Array<Array<T>>): Array<T> {
  const result: Array<T> = new Array<T>(0);
  for (let i = 0; i < ary.length; i++) {
    for (let j = 0; j < ary[i].length; j++) {
      result.push(ary[i][j]);
    }
  }
  return result;
}

export function toID(satpoint: ArrayBuffer, index: u32): ArrayBuffer {
  return Box.concat([
    Box.from(satpoint),
    Box.from(primitiveToBuffer<u32>(index)),
  ]);
}

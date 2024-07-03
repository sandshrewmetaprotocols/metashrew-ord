(module
 (type $0 (func (param i32) (result i32)))
 (type $1 (func (param i32 i32) (result i32)))
 (type $2 (func (result i32)))
 (type $3 (func (param i32 i32)))
 (type $4 (func (param i32 i32 i32) (result i32)))
 (type $5 (func))
 (type $6 (func (param i32 i32 i32)))
 (type $7 (func (param i32 i32 i32 i32) (result i32)))
 (type $8 (func (param i32) (result i64)))
 (type $9 (func (param i32)))
 (type $10 (func (param i32 i64) (result i32)))
 (type $11 (func (param i32 i32 i32 i32)))
 (type $12 (func (param i32 i64) (result i64)))
 (type $13 (func (param i64 i32 i32)))
 (type $14 (func (param i64 i32 i32) (result i64)))
 (type $15 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $16 (func (param i32 i32 i64)))
 (type $17 (func (param i32 i32) (result i64)))
 (type $18 (func (param i64 i32)))
 (type $19 (func (param i64 i32) (result i32)))
 (type $20 (func (param i64 i64 i32) (result i32)))
 (type $21 (func (param i32 i32 i32) (result i64)))
 (type $22 (func (param i32 i64 i64) (result i64)))
 (type $23 (func (param i32 i64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "__host_len" (func $~lib/metashrew-as/assembly/indexer/index/__host_len (result i32)))
 (import "env" "__load_input" (func $~lib/metashrew-as/assembly/indexer/index/__load_input (param i32)))
 (import "env" "__get_len" (func $~lib/metashrew-as/assembly/indexer/index/__get_len (param i32) (result i32)))
 (import "env" "__get" (func $~lib/metashrew-as/assembly/indexer/index/__get (param i32 i32)))
 (import "env" "__log" (func $~lib/metashrew-as/assembly/utils/logging/__log (param i32)))
 (import "env" "__flush" (func $~lib/metashrew-as/assembly/indexer/index/__flush (param i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/metashrew-as/assembly/indexer/index/_updates (mut i32) (i32.const 0))
 (global $~lib/metashrew-as/assembly/indexer/index/_updateKeys (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $assembly/tables/SAT_TO_OUTPOINT (mut i32) (i32.const 0))
 (global $assembly/tables/OUTPOINT_TO_SAT (mut i32) (i32.const 0))
 (global $assembly/tables/OUTPOINT_TO_VALUE (mut i32) (i32.const 0))
 (global $assembly/tables/OUTPOINT_TO_SEQUENCE_NUMBERS (mut i32) (i32.const 0))
 (global $assembly/tables/HEIGHT_TO_BLOCKHASH (mut i32) (i32.const 0))
 (global $assembly/tables/BLOCKHASH_TO_HEIGHT (mut i32) (i32.const 0))
 (global $assembly/tables/STARTING_SAT (mut i32) (i32.const 0))
 (global $assembly/tables/INSCRIPTION_ID_TO_INSCRIPTION (mut i32) (i32.const 0))
 (global $assembly/tables/SATPOINT_TO_INSCRIPTION_ID (mut i32) (i32.const 0))
 (global $assembly/tables/SATPOINT_TO_SAT (mut i32) (i32.const 0))
 (global $assembly/tables/INSCRIPTION_ID_TO_SATPOINT (mut i32) (i32.const 0))
 (global $assembly/tables/INSCRIPTION_ID_TO_BLOCKHEIGHT (mut i32) (i32.const 0))
 (global $assembly/tables/HEIGHT_TO_INSCRIPTION_IDS (mut i32) (i32.const 0))
 (global $assembly/tables/NEXT_SEQUENCE_NUMBER (mut i32) (i32.const 0))
 (global $assembly/tables/SEQUENCE_NUMBER_TO_INSCRIPTION_ID (mut i32) (i32.const 0))
 (global $assembly/tables/INSCRIPTION_ID_TO_SEQUENCE_NUMBER (mut i32) (i32.const 0))
 (memory $0 1 65335)
 (data $0 (i32.const 1036) "\1c\02")
 (data $0.1 (i32.const 1048) "\04\00\00\00\00\02\00\00000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f202122232425262728292a2b2c2d2e2f303132333435363738393a3b3c3d3e3f404142434445464748494a4b4c4d4e4f505152535455565758595a5b5c5d5e5f606162636465666768696a6b6c6d6e6f707172737475767778797a7b7c7d7e7f808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9fa0a1a2a3a4a5a6a7a8a9aaabacadaeafb0b1b2b3b4b5b6b7b8b9babbbcbdbebfc0c1c2c3c4c5c6c7c8c9cacbcccdcecfd0d1d2d3d4d5d6d7d8d9dadbdcdddedfe0e1e2e3e4e5e6e7e8e9eaebecedeeeff0f1f2f3f4f5f6f7f8f9fafbfcfdfeff")
 (data $1 (i32.const 1580) "<")
 (data $1.1 (i32.const 1592) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $2 (i32.const 1644) "<")
 (data $2.1 (i32.const 1656) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (data $3 (i32.const 1708) "\1c\02")
 (data $3.1 (i32.const 1720) "\04\00\00\00\00\02\00\00000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f202122232425262728292a2b2c2d2e2f303132333435363738393a3b3c3d3e3f404142434445464748494a4b4c4d4e4f505152535455565758595a5b5c5d5e5f606162636465666768696a6b6c6d6e6f707172737475767778797a7b7c7d7e7f808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9fa0a1a2a3a4a5a6a7a8a9aaabacadaeafb0b1b2b3b4b5b6b7b8b9babbbcbdbebfc0c1c2c3c4c5c6c7c8c9cacbcccdcecfd0d1d2d3d4d5d6d7d8d9dadbdcdddedfe0e1e2e3e4e5e6e7e8e9eaebecedeeeff0f1f2f3f4f5f6f7f8f9fafbfcfdfeff")
 (data $4 (i32.const 2252) "\1c\01")
 (data $4.1 (i32.const 2264) "\01\00\00\00\00\01\00\00\98/\8aB\91D7q\cf\fb\c0\b5\a5\db\b5\e9[\c2V9\f1\11\f1Y\a4\82?\92\d5^\1c\ab\98\aa\07\d8\01[\83\12\be\851$\c3}\0cUt]\ber\fe\b1\de\80\a7\06\dc\9bt\f1\9b\c1\c1i\9b\e4\86G\be\ef\c6\9d\c1\0f\cc\a1\0c$o,\e9-\aa\84tJ\dc\a9\b0\\\da\88\f9vRQ>\98m\c61\a8\c8\'\03\b0\c7\7fY\bf\f3\0b\e0\c6G\91\a7\d5Qc\ca\06g))\14\85\n\b7\'8!\1b.\fcm,M\13\r8STs\ne\bb\njv.\c9\c2\81\85,r\92\a1\e8\bf\a2Kf\1a\a8p\8bK\c2\a3Ql\c7\19\e8\92\d1$\06\99\d6\855\0e\f4p\a0j\10\16\c1\a4\19\08l7\1eLwH\'\b5\bc\b04\b3\0c\1c9J\aa\d8NO\ca\9c[\f3o.h\ee\82\8ftoc\a5x\14x\c8\84\08\02\c7\8c\fa\ff\be\90\eblP\a4\f7\a3\f9\be\f2xq\c6")
 (data $5 (i32.const 2540) ",")
 (data $5.1 (i32.const 2552) "\06\00\00\00\10\00\00\00\e0\08\00\00\e0\08\00\00\00\01\00\00@")
 (data $6 (i32.const 2588) ",")
 (data $6.1 (i32.const 2600) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $7 (i32.const 2636) "<")
 (data $7.1 (i32.const 2648) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data $8 (i32.const 2700) ",")
 (data $8.1 (i32.const 2712) "\02\00\00\00\14\00\00\00u\00s\00e\00 \00s\00t\00r\00i\00c\00t")
 (data $9 (i32.const 2748) "\1c")
 (data $9.1 (i32.const 2760) "\02\00\00\00\02\00\00\001")
 (data $10 (i32.const 2780) "<")
 (data $10.1 (i32.const 2792) "\02\00\00\00$\00\00\00U\00n\00p\00a\00i\00r\00e\00d\00 \00s\00u\00r\00r\00o\00g\00a\00t\00e")
 (data $11 (i32.const 2844) ",")
 (data $11.1 (i32.const 2856) "\02\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data $12 (i32.const 2892) "\1c\01")
 (data $12.1 (i32.const 2904) "\04\00\00\00\00\01")
 (data $12.2 (i32.const 2960) "\0f\00\n\11\15\14\1a\1e\07\05")
 (data $12.3 (i32.const 3009) "\1d\00\18\r\19\t\08\17\00\12\16\1f\1b\13\00\01\00\03\10\0b\1c\0c\0e\06\04\02")
 (data $13 (i32.const 3180) "<")
 (data $13.1 (i32.const 3192) "\04\00\00\00 \00\00\00qpzry9x8gf2tvdw0s3jn54khce6mua7l")
 (data $14 (i32.const 3244) "L")
 (data $14.1 (i32.const 3256) "\04\00\00\00:\00\00\00123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz")
 (data $15 (i32.const 3324) "<")
 (data $15.1 (i32.const 3336) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $16 (i32.const 3388) "<")
 (data $16.1 (i32.const 3400) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00s\00t\00a\00t\00i\00c\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $17 (i32.const 3452) ",")
 (data $17.1 (i32.const 3464) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $18 (i32.const 3500) "<")
 (data $18.1 (i32.const 3512) "\02\00\00\00*\00\00\00/\00o\00u\00t\00p\00o\00i\00n\00t\00/\00b\00y\00s\00a\00t\00r\00a\00n\00g\00e\00/")
 (data $19 (i32.const 3564) "<")
 (data $19.1 (i32.const 3576) "\02\00\00\00\"\00\00\00/\00s\00a\00t\00/\00b\00y\00/\00o\00u\00t\00p\00o\00i\00n\00t\00/")
 (data $20 (i32.const 3628) "<")
 (data $20.1 (i32.const 3640) "\02\00\00\00$\00\00\00/\00v\00a\00l\00u\00e\00/\00b\00y\00o\00u\00t\00p\00o\00i\00n\00t\00/")
 (data $21 (i32.const 3692) "L")
 (data $21.1 (i32.const 3704) "\02\00\00\006\00\00\00/\00s\00e\00q\00u\00e\00n\00c\00e\00n\00u\00m\00b\00e\00r\00s\00/\00b\00y\00o\00u\00t\00p\00o\00i\00n\00t")
 (data $22 (i32.const 3772) "<")
 (data $22.1 (i32.const 3784) "\02\00\00\00(\00\00\00/\00b\00l\00o\00c\00k\00h\00a\00s\00h\00/\00b\00y\00h\00e\00i\00g\00h\00t\00/")
 (data $23 (i32.const 3836) "<")
 (data $23.1 (i32.const 3848) "\02\00\00\00(\00\00\00/\00h\00e\00i\00g\00h\00t\00/\00b\00y\00b\00l\00o\00c\00k\00h\00a\00s\00h\00/")
 (data $24 (i32.const 3900) ",")
 (data $24.1 (i32.const 3912) "\02\00\00\00\18\00\00\00/\00s\00t\00a\00r\00t\00i\00n\00g\00s\00a\00t")
 (data $25 (i32.const 3948) "<")
 (data $25.1 (i32.const 3960) "\02\00\00\00$\00\00\00/\00i\00n\00s\00c\00r\00i\00p\00t\00i\00o\00n\00/\00b\00y\00i\00d\00/")
 (data $26 (i32.const 4012) "L")
 (data $26.1 (i32.const 4024) "\02\00\00\002\00\00\00/\00i\00n\00s\00c\00r\00i\00p\00t\00i\00o\00n\00i\00d\00/\00b\00y\00s\00a\00t\00p\00o\00i\00n\00t")
 (data $27 (i32.const 4092) "<")
 (data $27.1 (i32.const 4104) "\02\00\00\00\1e\00\00\00/\00s\00a\00t\00/\00b\00y\00s\00a\00t\00p\00o\00i\00n\00t")
 (data $28 (i32.const 4156) "L")
 (data $28.1 (i32.const 4168) "\02\00\00\004\00\00\00/\00s\00a\00t\00p\00o\00i\00n\00t\00/\00b\00y\00i\00n\00s\00c\00r\00i\00p\00t\00i\00o\00n\00i\00d\00/")
 (data $29 (i32.const 4236) "<")
 (data $29.1 (i32.const 4248) "\02\00\00\00,\00\00\00/\00h\00e\00i\00g\00h\00t\00/\00b\00y\00i\00n\00s\00c\00r\00i\00p\00t\00i\00o\00n\00/")
 (data $30 (i32.const 4300) "L")
 (data $30.1 (i32.const 4312) "\02\00\00\002\00\00\00/\00i\00n\00s\00c\00r\00i\00p\00t\00i\00o\00n\00i\00d\00s\00/\00b\00y\00h\00e\00i\00g\00h\00t\00/")
 (data $31 (i32.const 4380) ",")
 (data $31.1 (i32.const 4392) "\02\00\00\00\1a\00\00\00/\00n\00e\00x\00t\00s\00e\00q\00u\00e\00n\00c\00e")
 (data $32 (i32.const 4428) "L")
 (data $32.1 (i32.const 4440) "\02\00\00\004\00\00\00/\00i\00n\00s\00c\00r\00i\00p\00t\00i\00o\00n\00i\00d\00/\00b\00y\00s\00e\00q\00u\00e\00n\00c\00e\00/")
 (data $33 (i32.const 4508) "L")
 (data $33.1 (i32.const 4520) "\02\00\00\004\00\00\00/\00s\00e\00q\00u\00e\00n\00c\00e\00/\00b\00y\00i\00n\00s\00c\00r\00i\00p\00t\00i\00o\00n\00i\00d\00/")
 (data $34 (i32.const 4588) "|")
 (data $34.1 (i32.const 4600) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $35 (i32.const 4716) "\1c")
 (data $35.1 (i32.const 4728) "\1c\00\00\00\08\00\00\00\01")
 (data $36 (i32.const 4748) "\1c")
 (data $36.1 (i32.const 4760) "\1d\00\00\00\08\00\00\00\02")
 (data $37 (i32.const 4780) "\1c")
 (data $37.1 (i32.const 4792) "\1f\00\00\00\08\00\00\00\03")
 (data $38 (i32.const 4812) "<")
 (data $38.1 (i32.const 4824) "\02\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $39 (i32.const 4876) "|")
 (data $39.1 (i32.const 4888) "\02\00\00\00^\00\00\00S\00H\00A\002\005\006\00:\00 \00c\00a\00n\00\'\00t\00 \00u\00p\00d\00a\00t\00e\00 \00b\00e\00c\00a\00u\00s\00e\00 \00h\00a\00s\00h\00 \00w\00a\00s\00 \00f\00i\00n\00i\00s\00h\00e\00d\00.")
 (data $40 (i32.const 5004) "\\")
 (data $40.1 (i32.const 5016) "\02\00\00\00L\00\00\00~\00l\00i\00b\00/\00f\00a\00s\00t\00-\00s\00h\00a\002\005\006\00-\00a\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00s\00h\00a\002\005\006\00.\00t\00s")
 (data $41 (i32.const 5100) "<")
 (data $41.1 (i32.const 5112) "\02\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data $42 (i32.const 5164) ",")
 (data $42.1 (i32.const 5176) "\02\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s")
 (data $43 (i32.const 5212) "|")
 (data $43.1 (i32.const 5224) "\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data $44 (i32.const 5340) "<")
 (data $44.1 (i32.const 5352) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data $45 (i32.const 5404) "\1c")
 (data $45.1 (i32.const 5416) "\02\00\00\00\02\00\00\000")
 (data $46 (i32.const 5436) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data $47 (i32.const 5836) "\1c\04")
 (data $47.1 (i32.const 5848) "\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data $48 (i32.const 6892) "\\")
 (data $48.1 (i32.const 6904) "\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data $49 (i32.const 6988) "\1c")
 (data $49.1 (i32.const 7000) "\02\00\00\00\02\00\00\00:")
 (data $50 (i32.const 7020) "\1c")
 (data $50.1 (i32.const 7032) "\02")
 (data $51 (i32.const 7052) "\1c")
 (data $51.1 (i32.const 7064) "\02\00\00\00\n\00\00\00/\00m\00a\00s\00k")
 (data $52 (i32.const 7084) ",")
 (data $52.1 (i32.const 7096) "\02\00\00\00\0e\00\00\00/\00l\00e\00n\00g\00t\00h")
 (data $53 (i32.const 7132) "\1c")
 (data $53.1 (i32.const 7144) "\02\00\00\00\02\00\00\00/")
 (data $54 (i32.const 7164) "\1c")
 (data $54.1 (i32.const 7176) ")\00\00\00\08\00\00\00\04")
 (data $55 (i32.const 7196) "\1c")
 (data $55.1 (i32.const 7208) "*\00\00\00\08\00\00\00\05")
 (data $56 (i32.const 7228) "|")
 (data $56.1 (i32.const 7240) "\02\00\00\00f\00\00\00~\00l\00i\00b\00/\00m\00e\00t\00a\00s\00h\00r\00e\00w\00-\00a\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00b\00l\00o\00c\00k\00d\00a\00t\00a\00/\00i\00n\00s\00c\00r\00i\00p\00t\00i\00o\00n\00.\00t\00s")
 (data $57 (i32.const 7356) "\1c")
 (data $57.1 (i32.const 7368) "2\00\00\00\08\00\00\00\06")
 (data $58 (i32.const 7388) "<")
 (data $58.1 (i32.const 7400) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00d\00a\00t\00a\00v\00i\00e\00w\00.\00t\00s")
 (data $59 (i32.const 7452) "<")
 (data $59.1 (i32.const 7464) "\02\00\00\00\"\00\00\00D\00e\00c\00o\00d\00e\00r\00 \00p\00o\00s\00i\00t\00i\00o\00n\00 ")
 (data $60 (i32.const 7516) "<")
 (data $60.1 (i32.const 7528) "\02\00\00\00\"\00\00\00 \00i\00s\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00!")
 (data $61 (i32.const 7580) "\1c\00\00\00\03\00\00\00\00\00\00\00:\00\00\00\0c\00\00\000\1d\00\00\00\00\00\00p\1d")
 (data $62 (i32.const 7612) "<")
 (data $62.1 (i32.const 7624) "\02\00\00\00(\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00p\00r\00o\00t\00o\00b\00u\00f\00.\00t\00s")
 (data $63 (i32.const 7676) "\1c")
 (data $63.1 (i32.const 7688) "?\00\00\00\08\00\00\00\07")
 (table $0 8 8 funcref)
 (elem $0 (i32.const 1) $~lib/metashrew-as/assembly/utils/box/Box.concat~anonymous|0 $~lib/metashrew-as/assembly/utils/box/Box.concat~anonymous|1 $~lib/metashrew-as/assembly/utils/utils/concat~anonymous|0 $assembly/index/SatRanges.fromTransaction~anonymous|0 $assembly/index/SatRanges#pull~anonymous|0 $~lib/metashrew-as/assembly/indexer/index/_flush~anonymous|0 $assembly/index/outpointToSatRanges~anonymous|0)
 (export "trap" (func $assembly/index/trap))
 (export "_start" (func $assembly/index/_start))
 (export "satranges" (func $assembly/index/satranges))
 (export "sat" (func $assembly/index/sat))
 (export "inscription" (func $assembly/index/inscription))
 (export "content" (func $assembly/index/content))
 (export "inscriptionsfrom" (func $assembly/index/inscription))
 (export "inscriptionsforblock" (func $assembly/index/inscriptionsforblock))
 (export "output" (func $assembly/index/output))
 (export "test_arrayBufferCopy" (func $assembly/index/test_arrayBufferCopy))
 (export "test_nullTx" (func $assembly/index/test_nullTx))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1600
   i32.const 1664
   i32.const 33
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.set $1
  global.get $~lib/rt/stub/offset
  i32.const 4
  i32.add
  local.tee $2
  local.get $0
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.tee $0
  i32.add
  local.tee $3
  memory.size
  local.tee $4
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $5
  i32.gt_u
  if
   local.get $4
   local.get $3
   local.get $5
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $5
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $3
  global.set $~lib/rt/stub/offset
  local.get $1
  local.get $0
  i32.store
  local.get $2
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 1600
   i32.const 1664
   i32.const 86
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/stub/__alloc
  local.tee $3
  i32.const 4
  i32.sub
  local.tee $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  local.get $3
  i32.const 16
  i32.add
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 2608
   i32.const 2656
   i32.const 52
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  local.get $0
  memory.fill
  local.get $1
 )
 (func $"~lib/map/Map<~lib/string/String,~lib/arraybuffer/ArrayBuffer>#constructor" (result i32)
  (local $0 i32)
  i32.const 24
  i32.const 7
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $0
  i32.const 3
  i32.store offset=4
  local.get $0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
 )
 (func $~lib/string/String.UTF8.encode@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $2of2
   block $0of2
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of2 $2of2 $2of2 $outOfRange
    end
    unreachable
   end
   i32.const 0
   local.set $1
  end
  local.get $0
  local.tee $2
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.add
  local.set $4
  local.get $1
  i32.const 0
  i32.ne
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $4
   i32.lt_u
   if
    block $while-break|0
     local.get $2
     i32.load16_u
     local.tee $5
     i32.const 128
     i32.lt_u
     if (result i32)
      local.get $1
      local.get $5
      i32.eqz
      i32.and
      br_if $while-break|0
      local.get $3
      i32.const 1
      i32.add
     else
      local.get $5
      i32.const 2048
      i32.lt_u
      if (result i32)
       local.get $3
       i32.const 2
       i32.add
      else
       local.get $5
       i32.const 64512
       i32.and
       i32.const 55296
       i32.eq
       local.get $2
       i32.const 2
       i32.add
       local.get $4
       i32.lt_u
       i32.and
       if
        local.get $2
        i32.load16_u offset=2
        i32.const 64512
        i32.and
        i32.const 56320
        i32.eq
        if
         local.get $3
         i32.const 4
         i32.add
         local.set $3
         local.get $2
         i32.const 4
         i32.add
         local.set $2
         br $while-continue|0
        end
       end
       local.get $3
       i32.const 3
       i32.add
      end
     end
     local.set $3
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
  end
  local.get $3
  i32.const 1
  call $~lib/rt/stub/__new
  local.set $2
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const -2
  i32.and
  local.get $0
  i32.add
  local.set $5
  local.get $2
  local.set $3
  block $__inlined_func$~lib/string/String.UTF8.encodeUnsafe
   loop $while-continue|00
    local.get $0
    local.get $5
    i32.lt_u
    if
     local.get $0
     i32.load16_u
     local.tee $6
     i32.const 128
     i32.lt_u
     if
      local.get $3
      local.get $6
      i32.store8
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      local.get $1
      local.get $6
      i32.eqz
      i32.and
      br_if $__inlined_func$~lib/string/String.UTF8.encodeUnsafe
     else
      local.get $6
      i32.const 2048
      i32.lt_u
      if (result i32)
       local.get $3
       local.get $6
       i32.const 6
       i32.shr_u
       i32.const 192
       i32.or
       local.get $6
       i32.const 63
       i32.and
       i32.const 128
       i32.or
       i32.const 8
       i32.shl
       i32.or
       i32.store16
       local.get $3
       i32.const 2
       i32.add
      else
       local.get $6
       i32.const 63488
       i32.and
       i32.const 55296
       i32.eq
       if
        local.get $6
        i32.const 56320
        i32.lt_u
        local.get $0
        i32.const 2
        i32.add
        local.get $5
        i32.lt_u
        i32.and
        if
         local.get $0
         i32.load16_u offset=2
         local.tee $4
         i32.const 64512
         i32.and
         i32.const 56320
         i32.eq
         if
          local.get $3
          local.get $6
          i32.const 1023
          i32.and
          i32.const 10
          i32.shl
          i32.const 65536
          i32.add
          local.get $4
          i32.const 1023
          i32.and
          i32.or
          local.tee $4
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.const 24
          i32.shl
          local.get $4
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.const 16
          i32.shl
          i32.or
          local.get $4
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.const 8
          i32.shl
          i32.or
          local.get $4
          i32.const 18
          i32.shr_u
          i32.const 240
          i32.or
          i32.or
          i32.store
          local.get $3
          i32.const 4
          i32.add
          local.set $3
          local.get $0
          i32.const 4
          i32.add
          local.set $0
          br $while-continue|00
         end
        end
       end
       local.get $3
       local.get $6
       i32.const 12
       i32.shr_u
       i32.const 224
       i32.or
       local.get $6
       i32.const 6
       i32.shr_u
       i32.const 63
       i32.and
       i32.const 128
       i32.or
       i32.const 8
       i32.shl
       i32.or
       i32.store16
       local.get $3
       local.get $6
       i32.const 63
       i32.and
       i32.const 128
       i32.or
       i32.store8 offset=2
       local.get $3
       i32.const 3
       i32.add
      end
      local.set $3
     end
     local.get $0
     i32.const 2
     i32.add
     local.set $0
     br $while-continue|00
    end
   end
   local.get $1
   if
    local.get $3
    i32.const 0
    i32.store8
   end
  end
  local.get $2
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  local.get $1
  i32.shl
  local.tee $1
  i32.const 1
  call $~lib/rt/stub/__new
  local.set $3
  i32.const 16
  local.get $2
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $3
  i32.store
  local.get $2
  local.get $3
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/rt/stub/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 1600
   i32.const 1664
   i32.const 99
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.tee $0
  i32.const 15
  i32.and
  i32.const 1
  local.get $0
  select
  if
   i32.const 0
   i32.const 1664
   i32.const 45
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.get $0
  i32.const 4
  i32.sub
  local.tee $3
  i32.load
  local.tee $4
  local.get $0
  i32.add
  i32.eq
  local.set $5
  local.get $1
  i32.const 16
  i32.add
  local.tee $6
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $2
  local.get $4
  local.get $6
  i32.lt_u
  if
   local.get $5
   if
    local.get $6
    i32.const 1073741820
    i32.gt_u
    if
     i32.const 1600
     i32.const 1664
     i32.const 52
     i32.const 33
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.add
    local.tee $4
    memory.size
    local.tee $5
    i32.const 16
    i32.shl
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    local.tee $6
    i32.gt_u
    if
     local.get $5
     local.get $4
     local.get $6
     i32.sub
     i32.const 65535
     i32.add
     i32.const -65536
     i32.and
     i32.const 16
     i32.shr_u
     local.tee $6
     local.get $5
     local.get $6
     i32.gt_s
     select
     memory.grow
     i32.const 0
     i32.lt_s
     if
      local.get $6
      memory.grow
      i32.const 0
      i32.lt_s
      if
       unreachable
      end
     end
    end
    local.get $4
    global.set $~lib/rt/stub/offset
    local.get $3
    local.get $2
    i32.store
   else
    local.get $2
    local.get $4
    i32.const 1
    i32.shl
    local.tee $3
    local.get $2
    local.get $3
    i32.gt_u
    select
    call $~lib/rt/stub/__alloc
    local.tee $2
    local.get $0
    local.get $4
    memory.copy
    local.get $2
    local.set $0
   end
  else
   local.get $5
   if
    local.get $0
    local.get $2
    i32.add
    global.set $~lib/rt/stub/offset
    local.get $3
    local.get $2
    i32.store
   end
  end
  local.get $0
  i32.const 4
  i32.sub
  local.get $1
  i32.store offset=16
  local.get $0
  i32.const 16
  i32.add
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $4
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741820
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 2608
    i32.const 3472
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 8
   local.get $1
   local.get $1
   i32.const 8
   i32.le_u
   select
   local.get $2
   i32.shl
   local.set $1
   local.get $3
   if
    i32.const 1073741820
    local.get $4
    i32.const 1
    i32.shl
    local.tee $2
    local.get $2
    i32.const 1073741820
    i32.ge_u
    select
    local.tee $2
    local.get $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    local.set $1
   end
   local.get $0
   i32.load
   local.tee $5
   local.get $1
   call $~lib/rt/stub/__renew
   local.tee $2
   local.get $4
   i32.add
   i32.const 0
   local.get $1
   local.get $4
   i32.sub
   memory.fill
   local.get $2
   local.get $5
   i32.ne
   if
    local.get $0
    local.get $2
    i32.store
    local.get $0
    local.get $2
    i32.store offset=4
   end
   local.get $0
   local.get $1
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 3344
    i32.const 3472
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $start:assembly/index
  (local $0 i32)
  (local $1 i32)
  i32.const 7708
  global.set $~lib/rt/stub/offset
  i32.const 0
  i32.const 5
  call $~lib/rt/stub/__new
  i32.eqz
  if
   i32.const 0
   i32.const 0
   call $~lib/rt/stub/__new
   drop
  end
  call $"~lib/map/Map<~lib/string/String,~lib/arraybuffer/ArrayBuffer>#constructor"
  global.set $~lib/metashrew-as/assembly/indexer/index/_updates
  call $"~lib/map/Map<~lib/string/String,~lib/arraybuffer/ArrayBuffer>#constructor"
  global.set $~lib/metashrew-as/assembly/indexer/index/_updateKeys
  i32.const 0
  i32.const 8
  call $~lib/rt/stub/__new
  i32.eqz
  if
   i32.const 0
   i32.const 0
   call $~lib/rt/stub/__new
   drop
  end
  i32.const 1
  global.set $~argumentsLength
  i32.const 2768
  i32.const 0
  call $~lib/string/String.UTF8.encode@varargs
  drop
  i32.const 3260
  i32.load
  i32.eqz
  if
   i32.const 3344
   i32.const 3408
   i32.const 78
   i32.const 41
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3264
  i32.load8_u
  drop
  i32.const 34
  i32.const 2
  i32.const 10
  call $~lib/rt/__newArray
  local.tee $0
  i32.load offset=4
  drop
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 0
  i64.store
  local.get $0
  i32.const 0
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 1050000000000000
  i64.store
  local.get $0
  i32.const 1
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 1575000000000000
  i64.store
  local.get $0
  i32.const 2
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 1837500000000000
  i64.store
  local.get $0
  i32.const 3
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 1968750000000000
  i64.store
  local.get $0
  i32.const 4
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2034375000000000
  i64.store
  local.get $0
  i32.const 5
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2067187500000000
  i64.store
  local.get $0
  i32.const 6
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2083593750000000
  i64.store
  local.get $0
  i32.const 7
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2091796875000000
  i64.store
  local.get $0
  i32.const 8
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2095898437500000
  i64.store
  local.get $0
  i32.const 9
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2097949218750000
  i64.store
  local.get $0
  i32.const 10
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2098974609270000
  i64.store
  local.get $0
  i32.const 11
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2099487304530000
  i64.store
  local.get $0
  i32.const 12
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2099743652160000
  i64.store
  local.get $0
  i32.const 13
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2099871825870000
  i64.store
  local.get $0
  i32.const 14
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2099935912620000
  i64.store
  local.get $0
  i32.const 15
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2099967955890000
  i64.store
  local.get $0
  i32.const 16
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2099983977420000
  i64.store
  local.get $0
  i32.const 17
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2099991988080000
  i64.store
  local.get $0
  i32.const 18
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2099995993410000
  i64.store
  local.get $0
  i32.const 19
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2099997995970000
  i64.store
  local.get $0
  i32.const 20
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2099998997250000
  i64.store
  local.get $0
  i32.const 21
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2099999497890000
  i64.store
  local.get $0
  i32.const 22
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2099999748210000
  i64.store
  local.get $0
  i32.const 23
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2099999873370000
  i64.store
  local.get $0
  i32.const 24
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2099999935950000
  i64.store
  local.get $0
  i32.const 25
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2099999967240000
  i64.store
  local.get $0
  i32.const 26
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2099999982780000
  i64.store
  local.get $0
  i32.const 27
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2099999990550000
  i64.store
  local.get $0
  i32.const 28
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2099999994330000
  i64.store
  local.get $0
  i32.const 29
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2099999996220000
  i64.store
  local.get $0
  i32.const 30
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2099999997060000
  i64.store
  local.get $0
  i32.const 31
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2099999997480000
  i64.store
  local.get $0
  i32.const 32
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 8
  i32.const 9
  call $~lib/rt/stub/__new
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 2099999997690000
  i64.store
  local.get $0
  i32.const 33
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  i32.const 4
  i32.const 12
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 33
  i32.store
  i32.const 1
  global.set $~argumentsLength
  i32.const 3520
  i32.const 0
  call $~lib/string/String.UTF8.encode@varargs
  local.set $0
  i32.const 4
  i32.const 13
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.store
  local.get $1
  global.set $assembly/tables/SAT_TO_OUTPOINT
  i32.const 1
  global.set $~argumentsLength
  i32.const 3584
  i32.const 0
  call $~lib/string/String.UTF8.encode@varargs
  global.set $assembly/tables/OUTPOINT_TO_SAT
  i32.const 1
  global.set $~argumentsLength
  i32.const 3648
  i32.const 0
  call $~lib/string/String.UTF8.encode@varargs
  global.set $assembly/tables/OUTPOINT_TO_VALUE
  i32.const 1
  global.set $~argumentsLength
  i32.const 3712
  i32.const 0
  call $~lib/string/String.UTF8.encode@varargs
  global.set $assembly/tables/OUTPOINT_TO_SEQUENCE_NUMBERS
  i32.const 1
  global.set $~argumentsLength
  i32.const 3792
  i32.const 0
  call $~lib/string/String.UTF8.encode@varargs
  global.set $assembly/tables/HEIGHT_TO_BLOCKHASH
  i32.const 1
  global.set $~argumentsLength
  i32.const 3856
  i32.const 0
  call $~lib/string/String.UTF8.encode@varargs
  global.set $assembly/tables/BLOCKHASH_TO_HEIGHT
  i32.const 1
  global.set $~argumentsLength
  i32.const 3920
  i32.const 0
  call $~lib/string/String.UTF8.encode@varargs
  global.set $assembly/tables/STARTING_SAT
  i32.const 1
  global.set $~argumentsLength
  i32.const 3968
  i32.const 0
  call $~lib/string/String.UTF8.encode@varargs
  global.set $assembly/tables/INSCRIPTION_ID_TO_INSCRIPTION
  i32.const 1
  global.set $~argumentsLength
  i32.const 4032
  i32.const 0
  call $~lib/string/String.UTF8.encode@varargs
  global.set $assembly/tables/SATPOINT_TO_INSCRIPTION_ID
  i32.const 1
  global.set $~argumentsLength
  i32.const 4112
  i32.const 0
  call $~lib/string/String.UTF8.encode@varargs
  global.set $assembly/tables/SATPOINT_TO_SAT
  i32.const 1
  global.set $~argumentsLength
  i32.const 4176
  i32.const 0
  call $~lib/string/String.UTF8.encode@varargs
  global.set $assembly/tables/INSCRIPTION_ID_TO_SATPOINT
  i32.const 1
  global.set $~argumentsLength
  i32.const 4256
  i32.const 0
  call $~lib/string/String.UTF8.encode@varargs
  global.set $assembly/tables/INSCRIPTION_ID_TO_BLOCKHEIGHT
  i32.const 1
  global.set $~argumentsLength
  i32.const 4320
  i32.const 0
  call $~lib/string/String.UTF8.encode@varargs
  global.set $assembly/tables/HEIGHT_TO_INSCRIPTION_IDS
  i32.const 1
  global.set $~argumentsLength
  i32.const 4400
  i32.const 0
  call $~lib/string/String.UTF8.encode@varargs
  global.set $assembly/tables/NEXT_SEQUENCE_NUMBER
  i32.const 1
  global.set $~argumentsLength
  i32.const 4448
  i32.const 0
  call $~lib/string/String.UTF8.encode@varargs
  global.set $assembly/tables/SEQUENCE_NUMBER_TO_INSCRIPTION_ID
  i32.const 1
  global.set $~argumentsLength
  i32.const 4528
  i32.const 0
  call $~lib/string/String.UTF8.encode@varargs
  global.set $assembly/tables/INSCRIPTION_ID_TO_SEQUENCE_NUMBER
 )
 (func $assembly/index/trap
  unreachable
 )
 (func $~lib/metashrew-as/assembly/utils/box/Box#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 8
  i32.const 14
  call $~lib/rt/stub/__new
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
 )
 (func $~lib/metashrew-as/assembly/utils/utils/parseBytes (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  local.tee $2
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $0
  i32.load
  local.get $1
  i32.add
  i32.store
  local.get $0
  local.get $0
  i32.load offset=4
  local.get $1
  i32.sub
  i32.store offset=4
  local.get $2
 )
 (func $~lib/metashrew-as/assembly/utils/utils/parseVarInt (param $0 i32) (result i64)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load
  local.tee $2
  i32.load8_u
  local.set $3
  local.get $0
  local.get $2
  i32.const 1
  i32.add
  i32.store
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.sub
  i32.store offset=4
  block $case3|0
   block $case2|0
    block $case1|0
     block $case0|0
      local.get $3
      i32.const 253
      i32.sub
      br_table $case2|0 $case1|0 $case0|0 $case3|0
     end
     local.get $0
     i32.load
     local.tee $2
     i64.load
     local.set $1
     local.get $0
     local.get $2
     i32.const 8
     i32.add
     i32.store
     local.get $0
     local.get $0
     i32.load offset=4
     i32.const 8
     i32.sub
     i32.store offset=4
     local.get $1
     return
    end
    local.get $0
    i32.load
    local.tee $2
    i32.load
    local.set $3
    local.get $0
    local.get $2
    i32.const 4
    i32.add
    i32.store
    local.get $0
    local.get $0
    i32.load offset=4
    i32.const 4
    i32.sub
    i32.store offset=4
    local.get $3
    i64.extend_i32_u
    return
   end
   local.get $0
   i32.load
   local.tee $2
   i32.load16_u
   local.set $3
   local.get $0
   local.get $2
   i32.const 2
   i32.add
   i32.store
   local.get $0
   local.get $0
   i32.load offset=4
   i32.const 2
   i32.sub
   i32.store offset=4
   local.get $3
   i64.extend_i32_u
   return
  end
  local.get $3
  i64.extend_i32_u
 )
 (func $~lib/metashrew-as/assembly/blockdata/transaction/Output#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  i32.const 21
  i32.const 23
  call $~lib/rt/stub/__new
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  i64.const 0
  i64.store offset=8
  local.get $2
  i32.const 0
  i32.store offset=16
  local.get $2
  i32.const 0
  i32.store8 offset=20
  local.get $0
  i32.load
  local.tee $3
  i64.load
  local.set $4
  local.get $0
  local.get $3
  i32.const 8
  i32.add
  i32.store
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 8
  i32.sub
  i32.store offset=4
  local.get $2
  local.get $4
  i64.store offset=8
  local.get $2
  local.get $0
  local.get $0
  call $~lib/metashrew-as/assembly/utils/utils/parseVarInt
  i32.wrap_i64
  call $~lib/metashrew-as/assembly/utils/utils/parseBytes
  i32.store offset=16
  local.get $2
  local.get $3
  local.get $0
  i32.load
  local.get $3
  i32.sub
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  i32.store
  local.get $2
  local.get $1
  i32.store8 offset=20
  local.get $2
 )
 (func $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Output>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 1
  i32.add
  local.tee $2
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.store offset=12
  local.get $2
 )
 (func $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Input>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 3344
   i32.const 3472
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.eqz
  if
   i32.const 4608
   i32.const 3472
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $~lib/metashrew-as/assembly/blockdata/transaction/Transaction#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  i32.const 36
  i32.const 17
  call $~lib/rt/stub/__new
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store8 offset=8
  local.get $2
  i32.const 0
  i32.store offset=12
  local.get $2
  i32.const 0
  i32.store offset=16
  local.get $2
  i32.const 0
  i32.store offset=20
  local.get $2
  i32.const 0
  i32.store offset=24
  local.get $2
  i32.const 0
  i32.store offset=28
  local.get $2
  i32.const 0
  i32.store offset=32
  local.get $2
  i32.const 0
  i32.store
  i32.const 16
  i32.const 22
  call $~lib/rt/stub/__new
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.store offset=8
  local.get $3
  i32.const 0
  i32.store offset=12
  i32.const 32
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $4
  i32.const 0
  i32.const 32
  memory.fill
  local.get $3
  local.get $4
  i32.store
  local.get $3
  local.get $4
  i32.store offset=4
  local.get $3
  i32.const 32
  i32.store offset=8
  local.get $3
  i32.const 0
  i32.store offset=12
  local.get $2
  local.get $3
  i32.store offset=12
  i32.const 16
  i32.const 24
  call $~lib/rt/stub/__new
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.store offset=8
  local.get $3
  i32.const 0
  i32.store offset=12
  i32.const 32
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $4
  i32.const 0
  i32.const 32
  memory.fill
  local.get $3
  local.get $4
  i32.store
  local.get $3
  local.get $4
  i32.store offset=4
  local.get $3
  i32.const 32
  i32.store offset=8
  local.get $3
  i32.const 0
  i32.store offset=12
  local.get $2
  local.get $3
  i32.store offset=16
  local.get $2
  i32.const 0
  i32.store offset=24
  local.get $2
  i32.const 0
  i32.store offset=28
  local.get $2
  i32.const 0
  i32.store8 offset=8
  local.get $2
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=32
  local.get $0
  i32.load
  local.tee $3
  local.set $4
  local.get $3
  i32.load
  local.set $5
  local.get $0
  local.get $3
  i32.const 4
  i32.add
  i32.store
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.sub
  i32.store offset=4
  local.get $2
  local.get $5
  i32.store offset=4
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  local.set $3
  local.get $0
  i32.load
  i32.load8_u
  local.set $5
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  i32.load
  i32.load8_u
  local.set $6
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  i32.add
  i32.store
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $5
  i32.eqz
  local.get $6
  i32.const 1
  i32.eq
  i32.and
  if
   local.get $2
   i32.const 1
   i32.store8 offset=8
  else
   local.get $0
   local.get $3
   i32.load
   i32.store
   local.get $0
   local.get $3
   i32.load offset=4
   i32.store offset=4
  end
  local.get $0
  i32.load
  local.set $3
  local.get $0
  call $~lib/metashrew-as/assembly/utils/utils/parseVarInt
  i32.wrap_i64
  local.set $5
  loop $for-loop|0
   local.get $1
   local.get $5
   i32.lt_s
   if
    local.get $2
    i32.load offset=12
    local.get $1
    i32.const 24
    i32.const 18
    call $~lib/rt/stub/__new
    local.tee $6
    i32.const 0
    i32.store
    local.get $6
    i32.const 0
    i32.store offset=4
    local.get $6
    i32.const 0
    i32.store offset=8
    local.get $6
    i32.const 0
    i32.store offset=12
    local.get $6
    i32.const 0
    i32.store offset=16
    local.get $6
    i32.const 0
    i32.store offset=20
    local.get $0
    i32.load
    local.set $7
    local.get $6
    local.get $0
    i32.const 32
    call $~lib/metashrew-as/assembly/utils/utils/parseBytes
    i32.store offset=4
    local.get $0
    i32.load
    i32.load
    local.set $8
    local.get $0
    local.get $0
    i32.load
    i32.const 4
    i32.add
    i32.store
    local.get $0
    local.get $0
    i32.load offset=4
    i32.const 4
    i32.sub
    i32.store offset=4
    local.get $6
    local.get $8
    i32.store offset=8
    local.get $6
    local.get $0
    local.get $0
    call $~lib/metashrew-as/assembly/utils/utils/parseVarInt
    i32.wrap_i64
    call $~lib/metashrew-as/assembly/utils/utils/parseBytes
    i32.store offset=12
    local.get $0
    i32.load
    i32.load
    local.set $8
    local.get $0
    local.get $0
    i32.load
    i32.const 4
    i32.add
    i32.store
    local.get $0
    local.get $0
    i32.load offset=4
    i32.const 4
    i32.sub
    i32.store offset=4
    local.get $6
    local.get $8
    i32.store offset=16
    local.get $6
    i32.const 0
    i32.store offset=20
    local.get $6
    local.get $7
    local.get $0
    i32.load
    local.get $7
    i32.sub
    call $~lib/metashrew-as/assembly/utils/box/Box#constructor
    i32.store
    local.get $6
    call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
  call $~lib/metashrew-as/assembly/utils/utils/parseVarInt
  i32.wrap_i64
  local.set $6
  i32.const 0
  local.set $1
  loop $for-loop|1
   local.get $1
   local.get $6
   i32.lt_s
   if
    local.get $2
    i32.load8_u offset=8
    if (result i32)
     local.get $2
     i32.load offset=16
     local.get $0
     i32.const 1
     call $~lib/metashrew-as/assembly/blockdata/transaction/Output#constructor
     call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Output>#push
    else
     local.get $2
     i32.load offset=16
     local.get $0
     i32.const 0
     call $~lib/metashrew-as/assembly/blockdata/transaction/Output#constructor
     call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Output>#push
    end
    drop
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|1
   end
  end
  local.get $2
  local.get $3
  local.get $0
  i32.load
  local.get $3
  i32.sub
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  i32.store offset=28
  local.get $2
  i32.load8_u offset=8
  if
   local.get $0
   i32.load
   local.set $6
   i32.const 0
   local.set $1
   loop $for-loop|2
    local.get $1
    local.get $5
    i32.lt_s
    if
     local.get $2
     i32.load offset=12
     local.get $1
     call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Input>#__get
     i32.const 8
     i32.const 19
     call $~lib/rt/stub/__new
     local.tee $9
     i32.const 0
     i32.store
     local.get $9
     i32.const 0
     i32.store offset=4
     local.get $9
     i32.const 0
     i32.store
     local.get $0
     i32.load
     local.set $10
     local.get $0
     call $~lib/metashrew-as/assembly/utils/utils/parseVarInt
     i32.wrap_i64
     local.set $11
     i32.const 16
     i32.const 21
     call $~lib/rt/stub/__new
     local.tee $3
     i32.const 0
     i32.store
     local.get $3
     i32.const 0
     i32.store offset=4
     local.get $3
     i32.const 0
     i32.store offset=8
     local.get $3
     i32.const 0
     i32.store offset=12
     local.get $11
     i32.const 268435455
     i32.gt_u
     if
      i32.const 2608
      i32.const 3472
      i32.const 70
      i32.const 60
      call $~lib/builtins/abort
      unreachable
     end
     i32.const 8
     local.get $11
     local.get $11
     i32.const 8
     i32.le_u
     select
     i32.const 2
     i32.shl
     local.tee $7
     i32.const 1
     call $~lib/rt/stub/__new
     local.tee $8
     i32.const 0
     local.get $7
     memory.fill
     local.get $3
     local.get $8
     i32.store
     local.get $3
     local.get $8
     i32.store offset=4
     local.get $3
     local.get $7
     i32.store offset=8
     local.get $3
     local.get $11
     i32.store offset=12
     local.get $9
     local.get $3
     i32.store offset=4
     i32.const 0
     local.set $3
     loop $for-loop|00
      local.get $3
      local.get $11
      i32.lt_s
      if
       local.get $9
       i32.load offset=4
       local.get $3
       i32.const 7
       i32.const 20
       call $~lib/rt/stub/__new
       local.tee $7
       i32.const 0
       i32.store
       local.get $7
       i32.const 0
       i32.store8 offset=4
       local.get $7
       i32.const 0
       i32.store8 offset=5
       local.get $7
       i32.const 0
       i32.store8 offset=6
       local.get $7
       local.get $0
       local.get $0
       call $~lib/metashrew-as/assembly/utils/utils/parseVarInt
       i32.wrap_i64
       call $~lib/metashrew-as/assembly/utils/utils/parseBytes
       i32.store
       local.get $7
       i32.load
       local.tee $8
       i32.load
       local.get $8
       i32.load offset=4
       call $~lib/metashrew-as/assembly/utils/box/Box#constructor
       local.tee $8
       i32.load
       local.tee $12
       i32.load8_u
       local.set $13
       local.get $8
       local.get $12
       i32.const 1
       i32.add
       i32.store
       local.get $8
       local.get $8
       i32.load offset=4
       i32.const 1
       i32.sub
       i32.store offset=4
       local.get $7
       local.get $13
       i32.store8 offset=4
       block $break|0
        block $case2|0
         block $case1|0
          local.get $7
          i32.load8_u offset=4
          local.tee $8
          i32.const 80
          i32.ne
          if
           local.get $8
           i32.const 48
           i32.eq
           br_if $case1|0
           br $case2|0
          end
          local.get $7
          i32.const 1
          i32.store8 offset=6
          local.get $7
          i32.const 0
          i32.store8 offset=5
          br $break|0
         end
         local.get $7
         i32.const 0
         i32.store8 offset=5
         local.get $7
         i32.const 0
         i32.store8 offset=6
         br $break|0
        end
        local.get $7
        i32.const 0
        i32.store8 offset=6
        local.get $7
        i32.const 1
        i32.store8 offset=5
       end
       local.get $7
       i32.load
       i32.load offset=4
       i32.const 1
       i32.le_u
       if
        local.get $7
        i32.const 0
        i32.store8 offset=5
       end
       local.get $7
       call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $for-loop|00
      end
     end
     local.get $9
     local.get $10
     local.get $0
     i32.load
     local.get $10
     i32.sub
     call $~lib/metashrew-as/assembly/utils/box/Box#constructor
     i32.store
     local.get $9
     i32.store offset=20
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|2
    end
   end
   local.get $2
   local.get $6
   local.get $0
   i32.load
   local.get $6
   i32.sub
   call $~lib/metashrew-as/assembly/utils/box/Box#constructor
   i32.store offset=24
  end
  local.get $0
  i32.load
  local.tee $1
  i32.load
  local.set $3
  local.get $0
  local.get $1
  i32.const 4
  i32.add
  i32.store
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.sub
  i32.store offset=4
  local.get $2
  local.get $3
  i32.store offset=20
  local.get $2
  local.get $4
  local.get $0
  i32.load
  local.get $4
  i32.sub
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  i32.store
  local.get $2
 )
 (func $~lib/metashrew-as/assembly/blockdata/block/Block#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  i32.const 20
  i32.const 15
  call $~lib/rt/stub/__new
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  i32.const 0
  i32.store offset=12
  local.get $2
  i32.const 0
  i32.store offset=16
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  i32.const 0
  i32.store offset=12
  local.get $2
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.load
  local.set $3
  i32.const 28
  i32.const 16
  call $~lib/rt/stub/__new
  local.tee $5
  i32.const 0
  i32.store
  local.get $5
  i32.const 0
  i32.store offset=4
  local.get $5
  i32.const 0
  i32.store offset=8
  local.get $5
  i32.const 0
  i32.store offset=12
  local.get $5
  i32.const 0
  i32.store offset=16
  local.get $5
  i32.const 0
  i32.store offset=20
  local.get $5
  i32.const 0
  i32.store offset=24
  local.get $0
  i32.load
  local.tee $6
  i32.load
  local.set $7
  local.get $0
  local.get $6
  i32.const 4
  i32.add
  i32.store
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.sub
  i32.store offset=4
  local.get $5
  local.get $7
  i32.store
  local.get $5
  local.get $0
  i32.const 32
  call $~lib/metashrew-as/assembly/utils/utils/parseBytes
  i32.store offset=4
  local.get $5
  local.get $0
  i32.const 32
  call $~lib/metashrew-as/assembly/utils/utils/parseBytes
  i32.store offset=8
  local.get $0
  i32.load
  i32.load
  local.set $7
  local.get $0
  local.get $0
  i32.load
  i32.const 4
  i32.add
  i32.store
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.sub
  i32.store offset=4
  local.get $5
  local.get $7
  i32.store offset=12
  local.get $0
  i32.load
  i32.load
  local.set $7
  local.get $0
  local.get $0
  i32.load
  i32.const 4
  i32.add
  i32.store
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.sub
  i32.store offset=4
  local.get $5
  local.get $7
  i32.store offset=16
  local.get $0
  i32.load
  i32.load
  local.set $7
  local.get $0
  local.get $0
  i32.load
  i32.const 4
  i32.add
  i32.store
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.sub
  i32.store offset=4
  local.get $5
  local.get $7
  i32.store offset=20
  local.get $5
  local.get $6
  local.get $0
  i32.load
  local.get $6
  i32.sub
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  i32.store offset=24
  local.get $2
  local.get $5
  i32.store offset=4
  local.get $0
  call $~lib/metashrew-as/assembly/utils/utils/parseVarInt
  local.tee $4
  i32.wrap_i64
  local.set $6
  i32.const 16
  i32.const 25
  call $~lib/rt/stub/__new
  local.tee $7
  i32.const 0
  i32.store
  local.get $7
  i32.const 0
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.store offset=8
  local.get $7
  i32.const 0
  i32.store offset=12
  local.get $6
  i32.const 268435455
  i32.gt_u
  if
   i32.const 2608
   i32.const 3472
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  local.get $6
  local.get $6
  i32.const 8
  i32.le_u
  select
  i32.const 2
  i32.shl
  local.tee $5
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $8
  i32.const 0
  local.get $5
  memory.fill
  local.get $7
  local.get $8
  i32.store
  local.get $7
  local.get $8
  i32.store offset=4
  local.get $7
  local.get $5
  i32.store offset=8
  local.get $7
  local.get $6
  i32.store offset=12
  loop $for-loop|0
   local.get $1
   local.get $4
   i32.wrap_i64
   i32.lt_s
   if
    local.get $7
    local.get $1
    local.get $0
    call $~lib/metashrew-as/assembly/blockdata/transaction/Transaction#constructor
    call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
  local.get $7
  i32.store offset=8
  local.get $2
  local.get $3
  local.get $0
  i32.load
  local.get $3
  i32.sub
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  i32.store
  local.get $2
 )
 (func $~lib/metashrew-as/assembly/utils/box/Box.concat~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.load offset=4
  i32.add
 )
 (func $~lib/metashrew-as/assembly/utils/box/Box.concat~anonymous|1 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.load
  local.get $1
  i32.load offset=4
  memory.copy
  local.get $0
  local.get $1
  i32.load offset=4
  i32.add
 )
 (func $~lib/metashrew-as/assembly/utils/box/Box.concat (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=12
  local.set $4
  loop $for-loop|0
   local.get $1
   local.get $4
   local.get $0
   i32.load offset=12
   local.tee $5
   local.get $4
   local.get $5
   i32.lt_s
   select
   i32.lt_s
   if
    local.get $0
    i32.load offset=4
    local.get $1
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $5
    i32.const 4
    global.set $~argumentsLength
    local.get $2
    local.get $5
    local.get $1
    local.get $0
    i32.const 4736
    i32.load
    call_indirect (type $7)
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $2
  local.set $1
  local.get $0
  i32.load offset=12
  local.set $4
  loop $for-loop|01
   local.get $3
   local.get $4
   local.get $0
   i32.load offset=12
   local.tee $5
   local.get $4
   local.get $5
   i32.lt_s
   select
   i32.lt_s
   if
    local.get $0
    i32.load offset=4
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $5
    i32.const 4
    global.set $~argumentsLength
    local.get $1
    local.get $5
    local.get $3
    local.get $0
    i32.const 4768
    i32.load
    call_indirect (type $7)
    local.set $1
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|01
   end
  end
  local.get $2
 )
 (func $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 2
  i32.const 2
  i32.const 27
  call $~lib/rt/__newArray
  local.tee $2
  i32.load offset=4
  drop
  local.get $2
  i32.const 0
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  local.get $2
  i32.const 1
  local.get $1
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  local.get $2
  call $~lib/metashrew-as/assembly/utils/box/Box.concat
 )
 (func $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#selectValue<u32> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 4
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $2
  local.get $1
  i32.const -16711936
  i32.and
  i32.const 8
  i32.rotl
  local.get $1
  i32.const 16711935
  i32.and
  i32.const 8
  i32.rotr
  i32.or
  i32.store
  local.get $0
  local.get $2
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
 )
 (func $~lib/metashrew-as/assembly/utils/utils/concat~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
 )
 (func $~lib/array/Array<~lib/arraybuffer/ArrayBuffer>#map<~lib/metashrew-as/assembly/utils/box/Box> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 2
  i32.const 27
  call $~lib/rt/__newArray
  local.tee $3
  i32.load offset=4
  local.set $4
  loop $for-loop|0
   local.get $1
   local.get $2
   local.get $0
   i32.load offset=12
   local.tee $5
   local.get $2
   local.get $5
   i32.lt_s
   select
   i32.lt_s
   if
    local.get $1
    i32.const 2
    i32.shl
    local.tee $5
    local.get $0
    i32.load offset=4
    i32.add
    i32.load
    local.set $6
    i32.const 3
    global.set $~argumentsLength
    local.get $4
    local.get $5
    i32.add
    local.get $6
    local.get $1
    local.get $0
    i32.const 4800
    i32.load
    call_indirect (type $4)
    i32.store
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $3
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 3
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 1073741820
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 2608
   i32.const 2656
   i32.const 19
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.shl
  local.tee $1
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $2
  i32.const 0
  local.get $1
  memory.fill
  local.get $0
  local.get $2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Int32Array#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 3344
   i32.const 4832
   i32.const 747
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/fast-sha256-as/assembly/sha256/Hash#reset (param $0 i32)
  local.get $0
  i32.load offset=8
  i32.const 0
  i32.const 1779033703
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.const -1150833019
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.const 1013904242
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.const -1521486534
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.load offset=8
  i32.const 4
  i32.const 1359893119
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.load offset=8
  i32.const 5
  i32.const -1694144372
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.load offset=8
  i32.const 6
  i32.const 528734635
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.load offset=8
  i32.const 7
  i32.const 1541459225
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  i32.const 0
  i32.store offset=24
  local.get $0
  i32.const 0
  i32.store8 offset=28
 )
 (func $~lib/typedarray/Uint8Array#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 3344
   i32.const 4832
   i32.const 167
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $~lib/typedarray/Uint8Array#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 3344
   i32.const 4832
   i32.const 178
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/typedarray/Int32Array#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 3344
   i32.const 4832
   i32.const 736
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/fast-sha256-as/assembly/sha256/hashBlocks (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  loop $while-continue|0
   local.get $4
   i32.const 64
   i32.ge_s
   if
    local.get $1
    i32.const 0
    call $~lib/typedarray/Int32Array#__get
    local.set $9
    local.get $1
    i32.const 1
    call $~lib/typedarray/Int32Array#__get
    local.set $5
    local.get $1
    i32.const 2
    call $~lib/typedarray/Int32Array#__get
    local.set $6
    local.get $1
    i32.const 3
    call $~lib/typedarray/Int32Array#__get
    local.set $11
    local.get $1
    i32.const 4
    call $~lib/typedarray/Int32Array#__get
    local.set $10
    local.get $1
    i32.const 5
    call $~lib/typedarray/Int32Array#__get
    local.set $7
    local.get $1
    i32.const 6
    call $~lib/typedarray/Int32Array#__get
    local.set $8
    local.get $1
    i32.const 7
    call $~lib/typedarray/Int32Array#__get
    local.set $12
    i32.const 0
    local.set $13
    loop $for-loop|1
     local.get $13
     i32.const 16
     i32.lt_s
     if
      local.get $0
      local.get $13
      local.get $2
      local.get $3
      local.get $13
      i32.const 2
      i32.shl
      i32.add
      local.tee $14
      call $~lib/typedarray/Uint8Array#__get
      i32.const 255
      i32.and
      i32.const 24
      i32.shl
      local.get $2
      local.get $14
      i32.const 1
      i32.add
      call $~lib/typedarray/Uint8Array#__get
      i32.const 255
      i32.and
      i32.const 16
      i32.shl
      i32.or
      local.get $2
      local.get $14
      i32.const 2
      i32.add
      call $~lib/typedarray/Uint8Array#__get
      i32.const 255
      i32.and
      i32.const 8
      i32.shl
      i32.or
      local.get $2
      local.get $14
      i32.const 3
      i32.add
      call $~lib/typedarray/Uint8Array#__get
      i32.const 255
      i32.and
      i32.or
      call $~lib/typedarray/Int32Array#__set
      local.get $13
      i32.const 1
      i32.add
      local.set $13
      br $for-loop|1
     end
    end
    i32.const 16
    local.set $13
    loop $for-loop|2
     local.get $13
     i32.const 64
     i32.lt_s
     if
      local.get $0
      local.get $13
      i32.const 2
      i32.sub
      call $~lib/typedarray/Int32Array#__get
      local.set $14
      local.get $0
      local.get $13
      i32.const 15
      i32.sub
      call $~lib/typedarray/Int32Array#__get
      local.set $15
      local.get $0
      local.get $13
      local.get $0
      local.get $13
      i32.const 7
      i32.sub
      call $~lib/typedarray/Int32Array#__get
      local.get $14
      i32.const 15
      i32.shl
      local.get $14
      i32.const 17
      i32.shr_u
      i32.or
      local.get $14
      i32.const 13
      i32.shl
      local.get $14
      i32.const 19
      i32.shr_u
      i32.or
      i32.xor
      local.get $14
      i32.const 10
      i32.shr_u
      i32.xor
      i32.add
      local.get $0
      local.get $13
      i32.const 16
      i32.sub
      call $~lib/typedarray/Int32Array#__get
      local.get $15
      i32.const 25
      i32.shl
      local.get $15
      i32.const 7
      i32.shr_u
      i32.or
      local.get $15
      i32.const 14
      i32.shl
      local.get $15
      i32.const 18
      i32.shr_u
      i32.or
      i32.xor
      local.get $15
      i32.const 3
      i32.shr_u
      i32.xor
      i32.add
      i32.add
      call $~lib/typedarray/Int32Array#__set
      local.get $13
      i32.const 1
      i32.add
      local.set $13
      br $for-loop|2
     end
    end
    i32.const 0
    local.set $13
    loop $for-loop|3
     local.get $13
     i32.const 64
     i32.lt_s
     if
      local.get $13
      i32.const 2572
      i32.load
      i32.ge_u
      if
       i32.const 3344
       i32.const 3472
       i32.const 114
       i32.const 42
       call $~lib/builtins/abort
       unreachable
      end
      local.get $10
      i32.const 7
      i32.shl
      local.get $10
      i32.const 25
      i32.shr_u
      i32.or
      local.get $10
      i32.const 26
      i32.shl
      local.get $10
      i32.const 6
      i32.shr_u
      i32.or
      local.get $10
      i32.const 21
      i32.shl
      local.get $10
      i32.const 11
      i32.shr_u
      i32.or
      i32.xor
      i32.xor
      local.get $7
      local.get $10
      i32.and
      local.get $10
      i32.const -1
      i32.xor
      local.get $8
      i32.and
      i32.xor
      i32.add
      local.get $12
      i32.const 2564
      i32.load
      local.get $13
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get $0
      local.get $13
      call $~lib/typedarray/Int32Array#__get
      i32.add
      i32.add
      i32.add
      local.set $14
      local.get $9
      i32.const 10
      i32.shl
      local.get $9
      i32.const 22
      i32.shr_u
      i32.or
      local.get $9
      i32.const 30
      i32.shl
      local.get $9
      i32.const 2
      i32.shr_u
      i32.or
      local.get $9
      i32.const 19
      i32.shl
      local.get $9
      i32.const 13
      i32.shr_u
      i32.or
      i32.xor
      i32.xor
      local.get $5
      local.get $6
      i32.and
      local.get $5
      local.get $9
      i32.and
      local.get $6
      local.get $9
      i32.and
      i32.xor
      i32.xor
      i32.add
      local.set $15
      local.get $8
      local.set $12
      local.get $7
      local.set $8
      local.get $10
      local.set $7
      local.get $11
      local.get $14
      i32.add
      local.set $10
      local.get $6
      local.set $11
      local.get $5
      local.set $6
      local.get $9
      local.set $5
      local.get $14
      local.get $15
      i32.add
      local.set $9
      local.get $13
      i32.const 1
      i32.add
      local.set $13
      br $for-loop|3
     end
    end
    local.get $1
    i32.const 0
    local.get $1
    i32.const 0
    call $~lib/typedarray/Int32Array#__get
    local.get $9
    i32.add
    call $~lib/typedarray/Int32Array#__set
    local.get $1
    i32.const 1
    local.get $1
    i32.const 1
    call $~lib/typedarray/Int32Array#__get
    local.get $5
    i32.add
    call $~lib/typedarray/Int32Array#__set
    local.get $1
    i32.const 2
    local.get $1
    i32.const 2
    call $~lib/typedarray/Int32Array#__get
    local.get $6
    i32.add
    call $~lib/typedarray/Int32Array#__set
    local.get $1
    i32.const 3
    local.get $1
    i32.const 3
    call $~lib/typedarray/Int32Array#__get
    local.get $11
    i32.add
    call $~lib/typedarray/Int32Array#__set
    local.get $1
    i32.const 4
    local.get $1
    i32.const 4
    call $~lib/typedarray/Int32Array#__get
    local.get $10
    i32.add
    call $~lib/typedarray/Int32Array#__set
    local.get $1
    i32.const 5
    local.get $1
    i32.const 5
    call $~lib/typedarray/Int32Array#__get
    local.get $7
    i32.add
    call $~lib/typedarray/Int32Array#__set
    local.get $1
    i32.const 6
    local.get $1
    i32.const 6
    call $~lib/typedarray/Int32Array#__get
    local.get $8
    i32.add
    call $~lib/typedarray/Int32Array#__set
    local.get $1
    i32.const 7
    local.get $1
    i32.const 7
    call $~lib/typedarray/Int32Array#__get
    local.get $12
    i32.add
    call $~lib/typedarray/Int32Array#__set
    local.get $3
    i32.const -64
    i32.sub
    local.set $3
    local.get $4
    i32.const -64
    i32.add
    local.set $4
    br $while-continue|0
   end
  end
  local.get $3
 )
 (func $~lib/fast-sha256-as/assembly/sha256/Hash#finish (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load8_u offset=28
  i32.eqz
  if
   local.get $0
   i32.load offset=24
   local.tee $3
   i32.const 536870912
   i32.div_s
   local.set $4
   local.get $3
   i32.const 3
   i32.shl
   local.set $5
   i32.const 64
   i32.const 128
   local.get $3
   i32.const 64
   i32.rem_s
   i32.const 56
   i32.lt_s
   select
   local.set $6
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=20
   local.tee $3
   i32.const 128
   call $~lib/typedarray/Uint8Array#__set
   local.get $3
   i32.const 1
   i32.add
   local.set $3
   loop $for-loop|0
    local.get $3
    local.get $6
    i32.const 8
    i32.sub
    i32.lt_s
    if
     local.get $0
     i32.load offset=16
     local.get $3
     i32.const 0
     call $~lib/typedarray/Uint8Array#__set
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   local.get $0
   i32.load offset=16
   local.get $6
   i32.const 8
   i32.sub
   local.get $4
   i32.const 24
   i32.shr_u
   call $~lib/typedarray/Uint8Array#__set
   local.get $0
   i32.load offset=16
   local.get $6
   i32.const 7
   i32.sub
   local.get $4
   i32.const 16
   i32.shr_u
   i32.const 255
   i32.and
   call $~lib/typedarray/Uint8Array#__set
   local.get $0
   i32.load offset=16
   local.get $6
   i32.const 6
   i32.sub
   local.get $4
   i32.const 8
   i32.shr_u
   i32.const 255
   i32.and
   call $~lib/typedarray/Uint8Array#__set
   local.get $0
   i32.load offset=16
   local.get $6
   i32.const 5
   i32.sub
   local.get $4
   i32.const 255
   i32.and
   call $~lib/typedarray/Uint8Array#__set
   local.get $0
   i32.load offset=16
   local.get $6
   i32.const 4
   i32.sub
   local.get $5
   i32.const 24
   i32.shr_u
   call $~lib/typedarray/Uint8Array#__set
   local.get $0
   i32.load offset=16
   local.get $6
   i32.const 3
   i32.sub
   local.get $5
   i32.const 16
   i32.shr_u
   i32.const 255
   i32.and
   call $~lib/typedarray/Uint8Array#__set
   local.get $0
   i32.load offset=16
   local.get $6
   i32.const 2
   i32.sub
   local.get $5
   i32.const 8
   i32.shr_u
   i32.const 255
   i32.and
   call $~lib/typedarray/Uint8Array#__set
   local.get $0
   i32.load offset=16
   local.get $6
   i32.const 1
   i32.sub
   local.get $5
   i32.const 255
   i32.and
   call $~lib/typedarray/Uint8Array#__set
   local.get $0
   i32.load offset=12
   local.get $0
   i32.load offset=8
   local.get $0
   i32.load offset=16
   i32.const 0
   local.get $6
   call $~lib/fast-sha256-as/assembly/sha256/hashBlocks
   drop
   local.get $0
   i32.const 1
   i32.store8 offset=28
  end
  loop $for-loop|1
   local.get $2
   i32.const 8
   i32.lt_s
   if
    local.get $1
    local.get $2
    i32.const 2
    i32.shl
    local.tee $3
    local.get $0
    i32.load offset=8
    local.get $2
    call $~lib/typedarray/Int32Array#__get
    i32.const 24
    i32.shr_u
    call $~lib/typedarray/Uint8Array#__set
    local.get $1
    local.get $3
    i32.const 1
    i32.add
    local.get $0
    i32.load offset=8
    local.get $2
    call $~lib/typedarray/Int32Array#__get
    i32.const 16
    i32.shr_u
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $1
    local.get $3
    i32.const 2
    i32.add
    local.get $0
    i32.load offset=8
    local.get $2
    call $~lib/typedarray/Int32Array#__get
    i32.const 8
    i32.shr_u
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $1
    local.get $3
    i32.const 3
    i32.add
    local.get $0
    i32.load offset=8
    local.get $2
    call $~lib/typedarray/Int32Array#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
 )
 (func $~lib/fast-sha256-as/assembly/sha256/sha256 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 29
  i32.const 32
  call $~lib/rt/stub/__new
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.store offset=8
  local.get $3
  i32.const 0
  i32.store offset=12
  local.get $3
  i32.const 0
  i32.store offset=16
  local.get $3
  i32.const 0
  i32.store offset=20
  local.get $3
  i32.const 0
  i32.store offset=24
  local.get $3
  i32.const 0
  i32.store8 offset=28
  local.get $3
  i32.const 32
  i32.store
  local.get $3
  i32.const 64
  i32.store offset=4
  local.get $3
  i32.const 12
  i32.const 33
  call $~lib/rt/stub/__new
  i32.const 8
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  i32.store offset=8
  local.get $3
  i32.const 12
  i32.const 33
  call $~lib/rt/stub/__new
  i32.const 64
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  i32.store offset=12
  local.get $3
  i32.const 12
  i32.const 34
  call $~lib/rt/stub/__new
  i32.const 128
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  i32.store offset=16
  local.get $3
  i32.const 0
  i32.store offset=20
  local.get $3
  i32.const 0
  i32.store offset=24
  local.get $3
  call $~lib/fast-sha256-as/assembly/sha256/Hash#reset
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  local.set $1
  i32.const 12
  i32.const 34
  call $~lib/rt/stub/__new
  local.tee $4
  local.get $0
  i32.store
  local.get $4
  local.get $1
  i32.store offset=8
  local.get $4
  local.get $0
  i32.store offset=4
  i32.const 1
  global.set $~argumentsLength
  local.get $4
  i32.load offset=8
  local.set $1
  i32.const 0
  local.set $0
  local.get $3
  i32.load8_u offset=28
  if
   i32.const 4896
   i32.const 5024
   i32.const 196
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $3
  i32.load offset=24
  local.get $1
  i32.add
  i32.store offset=24
  local.get $3
  i32.load offset=20
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    local.get $3
    i32.load offset=20
    local.tee $5
    i32.const 64
    i32.lt_s
    local.get $1
    i32.const 0
    i32.gt_s
    i32.and
    if
     local.get $0
     local.tee $2
     i32.const 1
     i32.add
     local.set $0
     local.get $3
     i32.load offset=16
     local.set $6
     local.get $3
     local.get $5
     i32.const 1
     i32.add
     i32.store offset=20
     local.get $6
     local.get $5
     local.get $4
     local.get $2
     call $~lib/typedarray/Uint8Array#__get
     call $~lib/typedarray/Uint8Array#__set
     local.get $1
     i32.const 1
     i32.sub
     local.set $1
     br $while-continue|0
    end
   end
   local.get $3
   i32.load offset=20
   i32.const 64
   i32.eq
   if
    local.get $3
    i32.load offset=12
    local.get $3
    i32.load offset=8
    local.get $3
    i32.load offset=16
    i32.const 0
    i32.const 64
    call $~lib/fast-sha256-as/assembly/sha256/hashBlocks
    drop
    local.get $3
    i32.const 0
    i32.store offset=20
   end
  end
  local.get $1
  i32.const 64
  i32.ge_s
  if
   local.get $3
   i32.load offset=12
   local.get $3
   i32.load offset=8
   local.get $4
   local.get $0
   local.get $1
   call $~lib/fast-sha256-as/assembly/sha256/hashBlocks
   local.set $0
   local.get $1
   i32.const 64
   i32.rem_s
   local.set $1
  end
  loop $while-continue|1
   local.get $1
   i32.const 0
   i32.gt_s
   if
    local.get $0
    local.tee $2
    i32.const 1
    i32.add
    local.set $0
    local.get $3
    i32.load offset=16
    local.set $5
    local.get $3
    local.get $3
    i32.load offset=20
    local.tee $6
    i32.const 1
    i32.add
    i32.store offset=20
    local.get $5
    local.get $6
    local.get $4
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    call $~lib/typedarray/Uint8Array#__set
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $while-continue|1
   end
  end
  local.get $3
  i32.load
  local.set $0
  local.get $3
  i32.const 12
  i32.const 34
  call $~lib/rt/stub/__new
  local.get $0
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $1
  call $~lib/fast-sha256-as/assembly/sha256/Hash#finish
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.load offset=16
   local.tee $2
   i32.load offset=8
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 0
    call $~lib/typedarray/Uint8Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $0
  loop $for-loop|1
   local.get $0
   local.get $3
   i32.load offset=12
   local.tee $2
   i32.load offset=8
   i32.const 2
   i32.shr_u
   i32.lt_s
   if
    local.get $2
    local.get $0
    i32.const 0
    call $~lib/typedarray/Int32Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|1
   end
  end
  local.get $3
  call $~lib/fast-sha256-as/assembly/sha256/Hash#reset
  local.get $1
  i32.load
 )
 (func $~lib/metashrew-as/assembly/utils/utils/reverse (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.const 20
   i32.sub
   i32.load offset=16
   local.tee $3
   i32.lt_s
   if
    local.get $1
    local.get $2
    i32.add
    local.get $0
    local.get $3
    i32.add
    local.get $1
    i32.sub
    i32.const 1
    i32.sub
    i32.load8_u
    i32.store8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $~lib/metashrew-as/assembly/blockdata/block/Block#blockhash (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=4
  local.tee $0
  i32.load
  local.set $1
  i32.const 4
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $2
  local.get $1
  i32.store
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.load offset=4
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  local.get $1
  i32.load
  local.get $1
  i32.load offset=4
  memory.copy
  local.get $0
  i32.load offset=8
  local.tee $1
  i32.load offset=4
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $4
  local.get $1
  i32.load
  local.get $1
  i32.load offset=4
  memory.copy
  local.get $0
  i32.load offset=12
  local.set $1
  i32.const 4
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $5
  local.get $1
  i32.store
  local.get $0
  i32.load offset=16
  local.set $1
  i32.const 4
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $6
  local.get $1
  i32.store
  local.get $0
  i32.load offset=20
  local.set $0
  i32.const 4
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  local.get $0
  i32.store
  i32.const 6
  i32.const 2
  i32.const 30
  call $~lib/rt/__newArray
  local.tee $0
  i32.load offset=4
  drop
  local.get $0
  i32.const 0
  local.get $2
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  local.get $0
  i32.const 1
  local.get $3
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  local.get $0
  i32.const 2
  local.get $4
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  local.get $0
  i32.const 3
  local.get $5
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  local.get $0
  i32.const 4
  local.get $6
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  local.get $0
  i32.const 5
  local.get $1
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  local.get $0
  call $~lib/array/Array<~lib/arraybuffer/ArrayBuffer>#map<~lib/metashrew-as/assembly/utils/box/Box>
  call $~lib/metashrew-as/assembly/utils/box/Box.concat
  call $~lib/fast-sha256-as/assembly/sha256/sha256
  call $~lib/fast-sha256-as/assembly/sha256/sha256
  call $~lib/metashrew-as/assembly/utils/utils/reverse
 )
 (func $~lib/metashrew-as/assembly/utils/box/Box#toHexString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load
  local.set $2
  local.get $0
  i32.load offset=4
  local.tee $3
  i32.const 1
  i32.shl
  i32.const 2
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  i32.const 30768
  i32.store16
  i32.const 0
  local.set $0
  loop $for-loop|0
   local.get $0
   local.get $3
   i32.lt_u
   if
    local.get $1
    i32.const 2
    i32.add
    local.get $0
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    local.get $2
    i32.add
    i32.load8_u
    i32.const 1
    i32.shl
    i32.const 1056
    i32.add
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $1
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  local.tee $0
  i32.add
  local.tee $2
  local.get $1
  i32.lt_u
  if
   i32.const 0
   i32.const 2864
   i32.const 770
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/stub/__new
  local.tee $4
  local.set $3
  loop $while-continue|0
   local.get $1
   local.get $2
   i32.lt_u
   if
    block $while-break|0
     local.get $1
     i32.load8_u
     local.set $5
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.const 128
     i32.and
     if
      local.get $1
      local.get $2
      i32.eq
      br_if $while-break|0
      local.get $1
      i32.load8_u
      i32.const 63
      i32.and
      local.set $0
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.const 224
      i32.and
      i32.const 192
      i32.eq
      if
       local.get $3
       local.get $5
       i32.const 31
       i32.and
       i32.const 6
       i32.shl
       local.get $0
       i32.or
       i32.store16
      else
       local.get $1
       local.get $2
       i32.eq
       br_if $while-break|0
       local.get $1
       i32.load8_u
       i32.const 63
       i32.and
       local.set $6
       local.get $1
       i32.const 1
       i32.add
       local.set $1
       local.get $5
       i32.const 240
       i32.and
       i32.const 224
       i32.eq
       if
        local.get $5
        i32.const 15
        i32.and
        i32.const 12
        i32.shl
        local.get $0
        i32.const 6
        i32.shl
        i32.or
        local.get $6
        i32.or
        local.set $0
       else
        local.get $1
        local.get $2
        i32.eq
        br_if $while-break|0
        local.get $1
        i32.load8_u
        i32.const 63
        i32.and
        local.get $5
        i32.const 7
        i32.and
        i32.const 18
        i32.shl
        local.get $0
        i32.const 12
        i32.shl
        i32.or
        local.get $6
        i32.const 6
        i32.shl
        i32.or
        i32.or
        local.set $0
        local.get $1
        i32.const 1
        i32.add
        local.set $1
       end
       local.get $0
       i32.const 65536
       i32.lt_u
       if
        local.get $3
        local.get $0
        i32.store16
       else
        local.get $3
        local.get $0
        i32.const 65536
        i32.sub
        local.tee $0
        i32.const 10
        i32.shr_u
        i32.const 55296
        i32.or
        local.get $0
        i32.const 1023
        i32.and
        i32.const 56320
        i32.or
        i32.const 16
        i32.shl
        i32.or
        i32.store
        local.get $3
        i32.const 2
        i32.add
        local.set $3
       end
      end
     else
      local.get $3
      local.get $5
      i32.store16
     end
     local.get $3
     i32.const 2
     i32.add
     local.set $3
     br $while-continue|0
    end
   end
  end
  local.get $4
  local.get $3
  local.get $4
  i32.sub
  call $~lib/rt/stub/__renew
 )
 (func $~lib/util/hash/HASH<~lib/string/String> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  if (result i32)
   local.get $0
   local.tee $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const -2
   i32.and
   local.tee $3
   i32.const 16
   i32.ge_u
   if (result i32)
    i32.const 606290984
    local.set $2
    i32.const -2048144777
    local.set $4
    i32.const 1640531535
    local.set $5
    local.get $1
    local.get $3
    i32.add
    i32.const 16
    i32.sub
    local.set $7
    loop $while-continue|0
     local.get $1
     local.get $7
     i32.le_u
     if
      local.get $2
      local.get $1
      i32.load
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $2
      local.get $4
      local.get $1
      i32.load offset=4
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $4
      local.get $6
      local.get $1
      i32.load offset=8
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $6
      local.get $5
      local.get $1
      i32.load offset=12
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $5
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      br $while-continue|0
     end
    end
    local.get $3
    local.get $2
    i32.const 1
    i32.rotl
    local.get $4
    i32.const 7
    i32.rotl
    i32.add
    local.get $6
    i32.const 12
    i32.rotl
    i32.add
    local.get $5
    i32.const 18
    i32.rotl
    i32.add
    i32.add
   else
    local.get $3
    i32.const 374761393
    i32.add
   end
   local.set $2
   local.get $0
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.set $4
   loop $while-continue|1
    local.get $1
    local.get $4
    i32.le_u
    if
     local.get $2
     local.get $1
     i32.load
     i32.const -1028477379
     i32.mul
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.set $2
     local.get $1
     i32.const 4
     i32.add
     local.set $1
     br $while-continue|1
    end
   end
   local.get $0
   local.get $3
   i32.add
   local.set $0
   loop $while-continue|2
    local.get $0
    local.get $1
    i32.gt_u
    if
     local.get $2
     local.get $1
     i32.load8_u
     i32.const 374761393
     i32.mul
     i32.add
     i32.const 11
     i32.rotl
     i32.const -1640531535
     i32.mul
     local.set $2
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $while-continue|2
    end
   end
   local.get $2
   local.get $2
   i32.const 15
   i32.shr_u
   i32.xor
   i32.const -2048144777
   i32.mul
   local.tee $0
   i32.const 13
   i32.shr_u
   local.get $0
   i32.xor
   i32.const -1028477379
   i32.mul
   local.tee $0
   i32.const 16
   i32.shr_u
   local.get $0
   i32.xor
  else
   i32.const 0
  end
 )
 (func $"~lib/map/Map<~lib/string/String,~lib/arraybuffer/ArrayBuffer>#find" (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $5
  loop $while-continue|0
   local.get $5
   if
    local.get $5
    i32.load offset=8
    local.tee $6
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     block $__inlined_func$~lib/string/String.__eq$1326 (result i32)
      i32.const 1
      local.get $5
      i32.load
      local.tee $2
      local.get $1
      i32.eq
      br_if $__inlined_func$~lib/string/String.__eq$1326
      drop
      i32.const 0
      local.get $1
      i32.eqz
      local.get $2
      i32.eqz
      i32.or
      br_if $__inlined_func$~lib/string/String.__eq$1326
      drop
      i32.const 0
      local.get $2
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      local.tee $0
      local.get $1
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      i32.ne
      br_if $__inlined_func$~lib/string/String.__eq$1326
      drop
      local.get $1
      local.set $3
      local.get $0
      i32.const 4
      i32.ge_u
      if (result i32)
       local.get $2
       i32.const 7
       i32.and
       local.get $1
       i32.const 7
       i32.and
       i32.or
      else
       i32.const 1
      end
      i32.eqz
      if
       loop $do-loop|0
        local.get $2
        i64.load
        local.get $3
        i64.load
        i64.eq
        if
         local.get $2
         i32.const 8
         i32.add
         local.set $2
         local.get $3
         i32.const 8
         i32.add
         local.set $3
         local.get $0
         i32.const 4
         i32.sub
         local.tee $0
         i32.const 4
         i32.ge_u
         br_if $do-loop|0
        end
       end
      end
      block $__inlined_func$~lib/util/string/compareImpl$312
       loop $while-continue|1
        local.get $0
        local.tee $4
        i32.const 1
        i32.sub
        local.set $0
        local.get $4
        if
         local.get $2
         i32.load16_u
         local.tee $8
         local.get $3
         i32.load16_u
         local.tee $7
         i32.sub
         local.set $4
         local.get $7
         local.get $8
         i32.ne
         br_if $__inlined_func$~lib/util/string/compareImpl$312
         local.get $2
         i32.const 2
         i32.add
         local.set $2
         local.get $3
         i32.const 2
         i32.add
         local.set $3
         br $while-continue|1
        end
       end
       i32.const 0
       local.set $4
      end
      local.get $4
      i32.eqz
     end
    end
    if
     local.get $5
     return
    end
    local.get $6
    i32.const -2
    i32.and
    local.set $5
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $"~lib/map/Map<~lib/string/String,~lib/arraybuffer/ArrayBuffer>#set" (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  local.tee $7
  call $"~lib/map/Map<~lib/string/String,~lib/arraybuffer/ArrayBuffer>#find"
  local.tee $3
  if
   local.get $3
   local.get $2
   i32.store offset=4
  else
   local.get $0
   i32.load offset=12
   local.tee $3
   local.get $0
   i32.load offset=16
   i32.eq
   if
    local.get $0
    i32.load offset=20
    local.get $3
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    local.tee $9
    i32.const 1
    i32.add
    local.tee $3
    i32.const 2
    i32.shl
    call $~lib/arraybuffer/ArrayBuffer#constructor
    local.set $8
    local.get $3
    i32.const 3
    i32.shl
    i32.const 3
    i32.div_s
    local.tee $6
    i32.const 12
    i32.mul
    call $~lib/arraybuffer/ArrayBuffer#constructor
    local.set $4
    local.get $0
    i32.load offset=8
    local.tee $10
    local.get $0
    i32.load offset=16
    i32.const 12
    i32.mul
    i32.add
    local.set $5
    local.get $4
    local.set $3
    loop $while-continue|0
     local.get $5
     local.get $10
     i32.ne
     if
      local.get $10
      i32.load offset=8
      i32.const 1
      i32.and
      i32.eqz
      if
       local.get $3
       local.get $10
       i32.load
       local.tee $11
       i32.store
       local.get $3
       local.get $10
       i32.load offset=4
       i32.store offset=4
       local.get $3
       local.get $8
       local.get $11
       call $~lib/util/hash/HASH<~lib/string/String>
       local.get $9
       i32.and
       i32.const 2
       i32.shl
       i32.add
       local.tee $11
       i32.load
       i32.store offset=8
       local.get $11
       local.get $3
       i32.store
       local.get $3
       i32.const 12
       i32.add
       local.set $3
      end
      local.get $10
      i32.const 12
      i32.add
      local.set $10
      br $while-continue|0
     end
    end
    local.get $0
    local.get $8
    i32.store
    local.get $0
    local.get $9
    i32.store offset=4
    local.get $0
    local.get $4
    i32.store offset=8
    local.get $0
    local.get $6
    i32.store offset=12
    local.get $0
    local.get $0
    i32.load offset=20
    i32.store offset=16
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $4
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $3
   local.get $4
   i32.const 12
   i32.mul
   i32.add
   local.tee $3
   local.get $1
   i32.store
   local.get $3
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $3
   local.get $0
   i32.load
   local.get $7
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   local.tee $0
   i32.load
   i32.store offset=8
   local.get $0
   local.get $3
   i32.store
  end
 )
 (func $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#set (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  call $~lib/metashrew-as/assembly/utils/box/Box#toHexString
  local.set $2
  global.get $~lib/metashrew-as/assembly/indexer/index/_updates
  local.get $2
  local.get $1
  call $"~lib/map/Map<~lib/string/String,~lib/arraybuffer/ArrayBuffer>#set"
  global.get $~lib/metashrew-as/assembly/indexer/index/_updateKeys
  local.get $2
  local.get $0
  call $"~lib/map/Map<~lib/string/String,~lib/arraybuffer/ArrayBuffer>#set"
 )
 (func $~lib/array/Array<~lib/metashrew-as/assembly/utils/box/Box>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  i32.const 16
  i32.const 27
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  i32.const 32
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.const 32
  memory.fill
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 32
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
 )
 (func $~lib/metashrew-as/assembly/blockdata/transaction/Transaction#txid (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=32
  local.tee $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 0
  i32.gt_s
  if
   local.get $1
   return
  end
  local.get $0
  local.tee $1
  i32.load8_u offset=8
  if
   local.get $1
   i32.load
   i32.load
   i32.const 4
   call $~lib/metashrew-as/assembly/utils/box/Box#constructor
   local.set $2
   local.get $1
   i32.load
   i32.load
   local.get $1
   i32.load
   i32.load offset=4
   i32.add
   i32.const 4
   i32.sub
   i32.const 4
   call $~lib/metashrew-as/assembly/utils/box/Box#constructor
   local.set $3
   call $~lib/array/Array<~lib/metashrew-as/assembly/utils/box/Box>#constructor
   local.tee $0
   local.get $2
   call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Output>#push
   drop
   local.get $0
   local.get $1
   i32.load offset=28
   call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Output>#push
   drop
   local.get $0
   local.get $3
   call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Output>#push
   drop
  else
   call $~lib/array/Array<~lib/metashrew-as/assembly/utils/box/Box>#constructor
   local.tee $0
   local.get $1
   i32.load
   call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Output>#push
   drop
  end
  local.get $1
  local.get $0
  call $~lib/metashrew-as/assembly/utils/box/Box.concat
  call $~lib/fast-sha256-as/assembly/sha256/sha256
  call $~lib/fast-sha256-as/assembly/sha256/sha256
  call $~lib/metashrew-as/assembly/utils/utils/reverse
  i32.store offset=32
  local.get $1
  i32.load offset=32
 )
 (func $~lib/metashrew-as/assembly/blockdata/transaction/OutPoint#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 12
  i32.const 35
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.load offset=4
  i32.const 36
  i32.eq
  if
   local.get $1
   local.get $0
   i32.store
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   call $~lib/metashrew-as/assembly/utils/box/Box#constructor
   local.tee $2
   local.get $2
   i32.load offset=4
   i32.const 4
   i32.sub
   i32.store offset=4
   local.get $1
   local.get $2
   i32.store offset=4
   local.get $0
   i32.load
   i32.const 32
   i32.add
   local.get $0
   i32.load offset=4
   i32.const 32
   i32.sub
   call $~lib/metashrew-as/assembly/utils/box/Box#constructor
   local.tee $0
   i32.load
   i32.load
   local.set $2
   local.get $0
   local.get $0
   i32.load
   i32.const 4
   i32.add
   i32.store
   local.get $0
   local.get $0
   i32.load offset=4
   i32.const 4
   i32.sub
   i32.store offset=4
   local.get $1
   local.get $2
   i32.store offset=8
  end
  local.get $1
 )
 (func $~lib/metashrew-as/assembly/blockdata/transaction/OutPoint.from (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 4
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $2
  local.get $1
  i32.store
  i32.const 2
  i32.const 2
  i32.const 30
  call $~lib/rt/__newArray
  local.tee $1
  i32.load offset=4
  drop
  local.get $1
  i32.const 0
  local.get $0
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  local.get $1
  i32.const 1
  local.get $2
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  local.get $1
  call $~lib/array/Array<~lib/arraybuffer/ArrayBuffer>#map<~lib/metashrew-as/assembly/utils/box/Box>
  call $~lib/metashrew-as/assembly/utils/box/Box.concat
  local.tee $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  call $~lib/metashrew-as/assembly/blockdata/transaction/OutPoint#constructor
 )
 (func $"~lib/map/Map<~lib/string/String,~lib/arraybuffer/ArrayBuffer>#get" (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  call $"~lib/map/Map<~lib/string/String,~lib/arraybuffer/ArrayBuffer>#find"
  local.tee $0
  i32.eqz
  if
   i32.const 5120
   i32.const 5184
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
 )
 (func $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#get (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  call $~lib/metashrew-as/assembly/utils/box/Box#toHexString
  local.set $1
  global.get $~lib/metashrew-as/assembly/indexer/index/_updates
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  call $"~lib/map/Map<~lib/string/String,~lib/arraybuffer/ArrayBuffer>#find"
  if
   global.get $~lib/metashrew-as/assembly/indexer/index/_updates
   local.get $1
   call $"~lib/map/Map<~lib/string/String,~lib/arraybuffer/ArrayBuffer>#get"
   local.set $0
  else
   local.get $0
   local.get $0
   call $~lib/metashrew-as/assembly/indexer/index/__get_len
   call $~lib/arraybuffer/ArrayBuffer#constructor
   local.tee $0
   call $~lib/metashrew-as/assembly/indexer/index/__get
   global.get $~lib/metashrew-as/assembly/indexer/index/_updates
   local.get $1
   local.get $0
   call $"~lib/map/Map<~lib/string/String,~lib/arraybuffer/ArrayBuffer>#set"
  end
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  local.tee $0
  i32.load offset=4
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  memory.copy
  local.get $1
 )
 (func $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#getValue<u64> (param $0 i32) (result i64)
  (local $1 i32)
  local.get $0
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#get
  local.tee $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.eqz
  if
   i64.const 0
   return
  end
  i32.const 8
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  memory.copy
  local.get $1
  i64.load
 )
 (func $~lib/array/Array<u64>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 16
  i32.const 38
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 134217727
  i32.gt_u
  if
   i32.const 2608
   i32.const 3472
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  local.get $0
  local.get $0
  i32.const 8
  i32.le_u
  select
  i32.const 3
  i32.shl
  local.tee $2
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $3
  i32.const 0
  local.get $2
  memory.fill
  local.get $1
  local.get $3
  i32.store
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $1
 )
 (func $~lib/array/Array<u64>#__set (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 3344
    i32.const 3472
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 3
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  i64.store
 )
 (func $assembly/index/SatSource#constructor (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 16
  i32.const 36
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i64.const 0
  i64.store offset=8
  local.get $1
  local.get $0
  i32.store
  local.get $1
 )
 (func $assembly/index/SatRanges#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 8
  i32.const 37
  call $~lib/rt/stub/__new
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
 )
 (func $assembly/index/SatSink#constructor (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 16
  i32.const 39
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i64.const 0
  i64.store offset=8
  local.get $1
  local.get $0
  i32.store
  local.get $1
 )
 (func $~lib/array/Array<u64>#__get (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 3344
   i32.const 3472
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $assembly/index/SatSource#consumed (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.load
  i32.load offset=12
  i32.ge_s
  if (result i32)
   i32.const 1
  else
   local.get $0
   i32.load offset=4
   local.get $0
   i32.load
   local.tee $1
   i32.load
   i32.load offset=12
   i32.const 1
   i32.sub
   i32.eq
   if (result i32)
    local.get $0
    i64.load offset=8
    local.get $1
    i32.load offset=4
    local.tee $0
    local.get $0
    i32.load offset=12
    i32.const 1
    i32.sub
    call $~lib/array/Array<u64>#__get
    i64.ge_u
   else
    i32.const 0
   end
  end
 )
 (func $~lib/util/number/utoa32_dec_lut (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  loop $while-continue|0
   local.get $1
   i32.const 10000
   i32.ge_u
   if
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $3
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $1
    local.get $0
    local.get $2
    i32.const 4
    i32.sub
    local.tee $2
    i32.const 1
    i32.shl
    i32.add
    local.get $3
    i32.const 100
    i32.div_u
    i32.const 2
    i32.shl
    i32.const 5436
    i32.add
    i64.load32_u
    local.get $3
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 5436
    i32.add
    i64.load32_u
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $0
   local.get $2
   i32.const 2
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 100
   i32.rem_u
   i32.const 2
   i32.shl
   i32.const 5436
   i32.add
   i32.load
   i32.store
   local.get $1
   i32.const 100
   i32.div_u
   local.set $1
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $0
   local.get $2
   i32.const 2
   i32.sub
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 2
   i32.shl
   i32.const 5436
   i32.add
   i32.load
   i32.store
  else
   local.get $0
   local.get $2
   i32.const 1
   i32.sub
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 48
   i32.add
   i32.store16
  end
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 7040
  local.set $2
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const -2
  i32.and
  local.tee $3
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const -2
  i32.and
  local.tee $4
  i32.add
  local.tee $5
  if
   local.get $5
   i32.const 2
   call $~lib/rt/stub/__new
   local.tee $2
   local.get $0
   local.get $3
   memory.copy
   local.get $2
   local.get $3
   i32.add
   local.get $1
   local.get $4
   memory.copy
  end
  local.get $2
 )
 (func $~lib/metashrew-as/assembly/indexer/bst/BST<u64>#getMaskPointer (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
  local.set $0
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 7072
  i32.const 0
  call $~lib/string/String.UTF8.encode@varargs
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
 )
 (func $assembly/index/setSat (param $0 i64) (param $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  block $__inlined_func$~lib/util/number/utoa64$37
   local.get $0
   local.tee $2
   i64.eqz
   if
    i32.const 5424
    local.set $4
    br $__inlined_func$~lib/util/number/utoa64$37
   end
   local.get $2
   i64.const 4294967295
   i64.le_u
   if
    local.get $2
    i32.wrap_i64
    local.tee $3
    i32.const 100000
    i32.lt_u
    if (result i32)
     local.get $3
     i32.const 100
     i32.lt_u
     if (result i32)
      local.get $3
      i32.const 10
      i32.ge_u
      i32.const 1
      i32.add
     else
      local.get $3
      i32.const 10000
      i32.ge_u
      i32.const 3
      i32.add
      local.get $3
      i32.const 1000
      i32.ge_u
      i32.add
     end
    else
     local.get $3
     i32.const 10000000
     i32.lt_u
     if (result i32)
      local.get $3
      i32.const 1000000
      i32.ge_u
      i32.const 6
      i32.add
     else
      local.get $3
      i32.const 1000000000
      i32.ge_u
      i32.const 8
      i32.add
      local.get $3
      i32.const 100000000
      i32.ge_u
      i32.add
     end
    end
    local.tee $6
    i32.const 1
    i32.shl
    i32.const 2
    call $~lib/rt/stub/__new
    local.tee $4
    local.get $3
    local.get $6
    call $~lib/util/number/utoa32_dec_lut
   else
    local.get $2
    i64.const 1000000000000000
    i64.lt_u
    if (result i32)
     local.get $2
     i64.const 1000000000000
     i64.lt_u
     if (result i32)
      local.get $2
      i64.const 100000000000
      i64.ge_u
      i32.const 10
      i32.add
      local.get $2
      i64.const 10000000000
      i64.ge_u
      i32.add
     else
      local.get $2
      i64.const 100000000000000
      i64.ge_u
      i32.const 13
      i32.add
      local.get $2
      i64.const 10000000000000
      i64.ge_u
      i32.add
     end
    else
     local.get $2
     i64.const 100000000000000000
     i64.lt_u
     if (result i32)
      local.get $2
      i64.const 10000000000000000
      i64.ge_u
      i32.const 16
      i32.add
     else
      local.get $2
      i64.const -8446744073709551616
      i64.ge_u
      i32.const 18
      i32.add
      local.get $2
      i64.const 1000000000000000000
      i64.ge_u
      i32.add
     end
    end
    local.tee $3
    i32.const 1
    i32.shl
    i32.const 2
    call $~lib/rt/stub/__new
    local.set $4
    loop $while-continue|0
     local.get $2
     i64.const 100000000
     i64.ge_u
     if
      local.get $4
      local.get $3
      i32.const 4
      i32.sub
      local.tee $3
      i32.const 1
      i32.shl
      i32.add
      local.get $2
      local.get $2
      i64.const 100000000
      i64.div_u
      local.tee $2
      i64.const 100000000
      i64.mul
      i64.sub
      i32.wrap_i64
      local.tee $6
      i32.const 10000
      i32.rem_u
      local.tee $7
      i32.const 100
      i32.div_u
      i32.const 2
      i32.shl
      i32.const 5436
      i32.add
      i64.load32_u
      local.get $7
      i32.const 100
      i32.rem_u
      i32.const 2
      i32.shl
      i32.const 5436
      i32.add
      i64.load32_u
      i64.const 32
      i64.shl
      i64.or
      i64.store
      local.get $4
      local.get $3
      i32.const 4
      i32.sub
      local.tee $3
      i32.const 1
      i32.shl
      i32.add
      local.get $6
      i32.const 10000
      i32.div_u
      local.tee $6
      i32.const 100
      i32.div_u
      i32.const 2
      i32.shl
      i32.const 5436
      i32.add
      i64.load32_u
      local.get $6
      i32.const 100
      i32.rem_u
      i32.const 2
      i32.shl
      i32.const 5436
      i32.add
      i64.load32_u
      i64.const 32
      i64.shl
      i64.or
      i64.store
      br $while-continue|0
     end
    end
    local.get $4
    local.get $2
    i32.wrap_i64
    local.get $3
    call $~lib/util/number/utoa32_dec_lut
   end
  end
  local.get $4
  i32.const 7008
  call $~lib/string/String.__concat
  local.get $1
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  call $~lib/metashrew-as/assembly/utils/box/Box#toHexString
  call $~lib/string/String.__concat
  local.set $3
  i32.const 2
  global.set $~argumentsLength
  local.get $3
  i32.const 1
  call $~lib/string/String.UTF8.encode@varargs
  call $~lib/metashrew-as/assembly/utils/logging/__log
  global.get $assembly/tables/SAT_TO_OUTPOINT
  local.set $6
  i32.const 8
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $7
  local.get $0
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $0
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $2
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $2
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  local.tee $2
  i64.store
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  if
   i32.const 8
   call $~lib/arraybuffer/ArrayBuffer#constructor
   local.tee $4
   local.get $2
   i64.store
   loop $for-loop|0
    local.get $5
    i32.const 8
    i32.lt_s
    if
     local.get $5
     call $~lib/arraybuffer/ArrayBuffer#constructor
     local.set $3
     local.get $5
     if
      local.get $3
      local.get $4
      local.get $5
      memory.copy
     end
     local.get $6
     local.get $3
     call $~lib/metashrew-as/assembly/indexer/bst/BST<u64>#getMaskPointer
     local.tee $8
     call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#get
     local.tee $3
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.eqz
     if
      i32.const 32
      call $~lib/arraybuffer/ArrayBuffer#constructor
      local.set $3
     end
     local.get $4
     local.get $5
     i32.add
     i32.load8_u
     local.tee $9
     i32.const 3
     i32.shr_u
     local.get $3
     i32.add
     local.set $10
     i32.const 1
     i32.const 7
     local.get $9
     i32.const 7
     i32.and
     i32.sub
     i32.const 7
     i32.and
     i32.shl
     local.tee $9
     local.get $10
     i32.load8_u
     local.tee $11
     i32.and
     i32.eqz
     if
      local.get $10
      local.get $9
      local.get $11
      i32.or
      i32.store8
      local.get $8
      local.get $3
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#set
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $for-loop|0
    end
   end
  else
   i32.const 8
   call $~lib/arraybuffer/ArrayBuffer#constructor
   local.tee $8
   local.get $0
   i64.const 8
   i64.shr_u
   i64.const 71777214294589695
   i64.and
   local.get $0
   i64.const 71777214294589695
   i64.and
   i64.const 8
   i64.shl
   i64.or
   local.tee $0
   i64.const 16
   i64.shr_u
   i64.const 281470681808895
   i64.and
   local.get $0
   i64.const 281470681808895
   i64.and
   i64.const 16
   i64.shl
   i64.or
   i64.const 32
   i64.rotr
   i64.store
   i32.const 7
   local.set $5
   loop $for-loop|00
    local.get $5
    i32.const 0
    i32.ge_s
    if
     block $for-break0
      local.get $5
      call $~lib/arraybuffer/ArrayBuffer#constructor
      local.set $3
      local.get $5
      if
       local.get $3
       local.get $8
       local.get $5
       memory.copy
      end
      local.get $6
      local.get $3
      call $~lib/metashrew-as/assembly/indexer/bst/BST<u64>#getMaskPointer
      local.tee $9
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#get
      local.tee $3
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.eqz
      if
       i32.const 32
       call $~lib/arraybuffer/ArrayBuffer#constructor
       local.set $3
      end
      local.get $5
      local.get $8
      i32.add
      i32.load8_u
      local.tee $4
      i32.const 3
      i32.shr_u
      local.get $3
      i32.add
      local.tee $10
      i32.load8_u
      local.tee $11
      i32.const 1
      i32.const 7
      local.get $4
      i32.const 7
      i32.and
      i32.sub
      i32.const 7
      i32.and
      local.tee $4
      i32.shl
      i32.and
      if
       local.get $10
       local.get $11
       i32.const -2
       local.get $4
       i32.rotl
       i32.and
       i32.store8
      end
      block $__inlined_func$~lib/metashrew-as/assembly/indexer/bst/isZeroU256$449 (result i32)
       i32.const 0
       local.set $4
       loop $for-loop|001
        local.get $4
        i32.const 4
        i32.lt_s
        if
         i32.const 0
         local.get $3
         local.get $4
         i32.const 3
         i32.shl
         i32.add
         i64.load
         i64.const 0
         i64.ne
         br_if $__inlined_func$~lib/metashrew-as/assembly/indexer/bst/isZeroU256$449
         drop
         local.get $4
         i32.const 1
         i32.add
         local.set $4
         br $for-loop|001
        end
       end
       i32.const 1
      end
      if
       local.get $9
       i32.const 0
       call $~lib/arraybuffer/ArrayBuffer#constructor
       call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#set
      else
       local.get $9
       local.get $3
       call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#set
       br $for-break0
      end
      local.get $5
      i32.const 1
      i32.sub
      local.set $5
      br $for-loop|00
     end
    end
   end
  end
  local.get $6
  i32.load
  local.get $7
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
  local.get $1
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#set
 )
 (func $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#getValue<u32> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#get
  local.tee $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.eqz
  if
   i32.const 0
   return
  end
  i32.const 4
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  memory.copy
  local.get $1
  i32.load
 )
 (func $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#selectIndex (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 7152
  local.get $1
  if (result i32)
   local.get $1
   i32.const 100000
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 100
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 10
     i32.ge_u
     i32.const 1
     i32.add
    else
     local.get $1
     i32.const 10000
     i32.ge_u
     i32.const 3
     i32.add
     local.get $1
     i32.const 1000
     i32.ge_u
     i32.add
    end
   else
    local.get $1
    i32.const 10000000
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 1000000
     i32.ge_u
     i32.const 6
     i32.add
    else
     local.get $1
     i32.const 1000000000
     i32.ge_u
     i32.const 8
     i32.add
     local.get $1
     i32.const 100000000
     i32.ge_u
     i32.add
    end
   end
   local.tee $3
   i32.const 1
   i32.shl
   i32.const 2
   call $~lib/rt/stub/__new
   local.tee $2
   local.get $1
   local.get $3
   call $~lib/util/number/utoa32_dec_lut
   local.get $2
  else
   i32.const 5424
  end
  call $~lib/string/String.__concat
  local.set $1
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/string/String.UTF8.encode@varargs
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
 )
 (func $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#extend (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 7104
  i32.const 0
  call $~lib/string/String.UTF8.encode@varargs
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
  local.tee $2
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#getValue<u32>
  local.set $1
  i32.const 4
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  local.get $1
  i32.const 1
  i32.add
  i32.store
  local.get $2
  local.get $3
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#set
  local.get $0
  local.get $1
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#selectIndex
 )
 (func $assembly/index/SatSink#consume (param $0 i32) (param $1 i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  loop $while-continue|0
   local.get $1
   call $assembly/index/SatSource#consumed
   if (result i32)
    i32.const 1
   else
    local.get $0
    i32.load offset=4
    local.get $0
    i32.load
    i32.load offset=16
    i32.load offset=12
    i32.ge_s
    if (result i32)
     i32.const 1
    else
     local.get $0
     i32.load
     i32.load offset=16
     local.tee $5
     i32.load offset=12
     i32.const 1
     i32.sub
     local.tee $6
     local.get $0
     i32.load offset=4
     i32.eq
     if (result i32)
      local.get $0
      i64.load offset=8
      local.get $5
      local.get $6
      call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Input>#__get
      i64.load offset=8
      i64.ge_u
     else
      i32.const 0
     end
    end
   end
   i32.eqz
   if
    local.get $1
    i32.load
    i32.load offset=4
    local.get $1
    i32.load offset=4
    call $~lib/array/Array<u64>#__get
    local.get $1
    i64.load offset=8
    i64.sub
    local.set $2
    local.get $0
    i32.load
    i32.load offset=16
    local.get $0
    i32.load offset=4
    call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Input>#__get
    i64.load offset=8
    local.get $0
    i64.load offset=8
    i64.sub
    local.set $3
    local.get $0
    i32.load
    call $~lib/metashrew-as/assembly/blockdata/transaction/Transaction#txid
    local.get $0
    i32.load offset=4
    call $~lib/metashrew-as/assembly/blockdata/transaction/OutPoint.from
    i32.load
    local.tee $5
    i32.load offset=4
    call $~lib/arraybuffer/ArrayBuffer#constructor
    local.tee $6
    local.get $5
    i32.load
    local.get $5
    i32.load offset=4
    memory.copy
    local.get $1
    i32.load
    i32.load
    local.get $1
    i32.load offset=4
    call $~lib/array/Array<u64>#__get
    local.get $1
    i64.load offset=8
    i64.add
    local.tee $4
    local.get $6
    call $assembly/index/setSat
    global.get $assembly/tables/OUTPOINT_TO_SAT
    local.get $6
    call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
    call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#extend
    local.set $5
    i32.const 8
    call $~lib/arraybuffer/ArrayBuffer#constructor
    local.tee $6
    local.get $4
    i64.store
    local.get $5
    local.get $6
    call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#set
    local.get $2
    local.get $3
    i64.gt_u
    if
     local.get $0
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $0
     i64.const 0
     i64.store offset=8
     local.get $1
     local.get $1
     i64.load offset=8
     local.get $3
     i64.add
     i64.store offset=8
    else
     local.get $2
     local.get $3
     i64.lt_u
     if
      local.get $1
      local.get $1
      i32.load offset=4
      i32.const 1
      i32.add
      i32.store offset=4
      local.get $1
      i64.const 0
      i64.store offset=8
      local.get $0
      local.get $0
      i64.load offset=8
      local.get $2
      i64.add
      i64.store offset=8
     else
      local.get $1
      i64.const 0
      i64.store offset=8
      local.get $1
      local.get $1
      i32.load offset=4
      i32.const 1
      i32.add
      i32.store offset=4
      local.get $0
      i64.const 0
      i64.store offset=8
      local.get $0
      local.get $0
      i32.load offset=4
      i32.const 1
      i32.add
      i32.store offset=4
     end
    end
    br $while-continue|0
   end
  end
 )
 (func $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#getListValues<u64> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 1
  global.set $~argumentsLength
  local.get $0
  i32.const 7104
  i32.const 0
  call $~lib/string/String.UTF8.encode@varargs
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#getValue<u32>
  call $~lib/array/Array<u64>#constructor
  local.set $2
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.load offset=12
   i32.lt_s
   if
    local.get $2
    local.get $1
    local.get $0
    local.get $1
    call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#selectIndex
    call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#getValue<u64>
    call $~lib/array/Array<u64>#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $2
 )
 (func $assembly/index/SatRanges.fromTransaction~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $assembly/tables/OUTPOINT_TO_SAT
  local.set $2
  local.get $0
  i32.load offset=4
  i32.load
  i32.const 32
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  local.tee $1
  i32.load offset=4
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  local.get $1
  i32.load
  local.get $1
  i32.load offset=4
  memory.copy
  local.get $3
  call $~lib/metashrew-as/assembly/utils/utils/reverse
  local.get $0
  i32.load offset=8
  call $~lib/metashrew-as/assembly/blockdata/transaction/OutPoint.from
  i32.load
  local.tee $0
  i32.load offset=4
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  memory.copy
  local.get $2
  local.get $1
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#getListValues<u64>
 )
 (func $~lib/metashrew-as/assembly/indexer/bst/maskGreaterThan (param $0 i32) (param $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 4
  call $~lib/array/Array<u64>#constructor
  local.tee $3
  i32.const 0
  local.get $0
  i64.load
  local.tee $2
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $2
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $2
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $2
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  call $~lib/array/Array<u64>#__set
  local.get $3
  i32.const 1
  local.get $0
  i64.load offset=8
  local.tee $2
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $2
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $2
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $2
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  call $~lib/array/Array<u64>#__set
  local.get $3
  i32.const 2
  local.get $0
  i64.load offset=16
  local.tee $2
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $2
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $2
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $2
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  call $~lib/array/Array<u64>#__set
  local.get $3
  i32.const 3
  local.get $0
  i64.load offset=24
  local.tee $2
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $2
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $2
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $2
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  call $~lib/array/Array<u64>#__set
  local.get $3
  local.get $1
  i32.const 255
  i32.and
  local.tee $6
  i32.const 6
  i32.shr_u
  local.tee $1
  local.get $3
  local.get $1
  call $~lib/array/Array<u64>#__get
  i64.const 1
  local.get $6
  i32.const 63
  i32.and
  local.tee $6
  i32.const 1
  i32.add
  i64.extend_i32_u
  i64.shl
  i64.const 1
  i64.sub
  i64.const 63
  local.get $6
  i64.extend_i32_u
  i64.sub
  i64.shl
  i64.const -1
  i64.xor
  i64.and
  call $~lib/array/Array<u64>#__set
  loop $for-loop|0
   local.get $1
   local.get $5
   i32.gt_u
   if
    local.get $3
    local.get $5
    i64.const 0
    call $~lib/array/Array<u64>#__set
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $4
   i32.const 4
   i32.lt_s
   if
    local.get $0
    local.get $4
    i32.const 3
    i32.shl
    i32.add
    local.get $3
    local.get $4
    call $~lib/array/Array<u64>#__get
    local.tee $2
    i64.const 8
    i64.shr_u
    i64.const 71777214294589695
    i64.and
    local.get $2
    i64.const 71777214294589695
    i64.and
    i64.const 8
    i64.shl
    i64.or
    local.tee $2
    i64.const 16
    i64.shr_u
    i64.const 281470681808895
    i64.and
    local.get $2
    i64.const 281470681808895
    i64.and
    i64.const 16
    i64.shl
    i64.or
    i64.const 32
    i64.rotr
    i64.store
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
 )
 (func $~lib/metashrew-as/assembly/indexer/bst/binarySearchU8 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  i32.const 15
  i32.and
  local.tee $2
  local.get $1
  select
  i32.eqz
  local.get $0
  i32.const 255
  i32.and
  i32.const 4
  i32.shr_u
  local.tee $0
  i32.const 0
  i32.ne
  i32.and
  if
   block $__inlined_func$~lib/metashrew-as/assembly/indexer/bst/binarySearchU4$41 (result i32)
    i32.const 0
    local.get $0
    i32.const 2
    i32.shr_u
    local.tee $2
    i32.const 1
    i32.and
    local.get $1
    select
    i32.eqz
    local.get $2
    i32.const 1
    i32.shr_u
    i32.and
    i32.eqz
    i32.const 0
    local.get $0
    i32.const 3
    i32.and
    local.tee $0
    local.get $1
    select
    i32.eqz
    local.get $2
    i32.const 0
    i32.ne
    i32.and
    br_if $__inlined_func$~lib/metashrew-as/assembly/indexer/bst/binarySearchU4$41
    drop
    i32.const 2
    i32.const 3
    i32.const 0
    local.get $0
    i32.const 1
    i32.and
    local.get $1
    select
    i32.eqz
    local.get $0
    i32.const 1
    i32.shr_u
    i32.and
    select
   end
   return
  end
  block $__inlined_func$~lib/metashrew-as/assembly/indexer/bst/binarySearchU4$42 (result i32)
   i32.const 0
   local.get $2
   i32.const 3
   i32.and
   local.tee $0
   local.get $1
   select
   i32.eqz
   local.get $2
   i32.const 2
   i32.shr_u
   local.tee $2
   i32.const 0
   i32.ne
   i32.and
   if
    i32.const 0
    local.get $2
    i32.const 1
    i32.and
    local.get $1
    select
    i32.eqz
    local.get $2
    i32.const 1
    i32.shr_u
    i32.and
    i32.eqz
    br $__inlined_func$~lib/metashrew-as/assembly/indexer/bst/binarySearchU4$42
   end
   i32.const 2
   i32.const 3
   i32.const 0
   local.get $0
   i32.const 1
   i32.and
   local.get $1
   select
   i32.eqz
   local.get $0
   i32.const 1
   i32.shr_u
   i32.and
   select
  end
  i32.const 4
  i32.add
 )
 (func $~lib/metashrew-as/assembly/indexer/bst/binarySearchU16 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  i32.const 255
  i32.and
  local.tee $2
  local.get $1
  select
  i32.eqz
  local.get $0
  i32.const 65535
  i32.and
  i32.const 8
  i32.shr_u
  local.tee $0
  i32.const 0
  i32.ne
  i32.and
  if (result i32)
   local.get $0
   local.get $1
   call $~lib/metashrew-as/assembly/indexer/bst/binarySearchU8
  else
   local.get $2
   local.get $1
   call $~lib/metashrew-as/assembly/indexer/bst/binarySearchU8
   i32.const 8
   i32.add
  end
 )
 (func $~lib/metashrew-as/assembly/indexer/bst/binarySearchU32 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 0
  local.get $0
  i32.const 65535
  i32.and
  local.tee $2
  local.get $1
  select
  i32.eqz
  local.get $0
  i32.const 16
  i32.shr_u
  local.tee $0
  i32.const 0
  i32.ne
  i32.and
  if (result i32)
   local.get $0
   local.get $1
   call $~lib/metashrew-as/assembly/indexer/bst/binarySearchU16
  else
   local.get $2
   local.get $1
   call $~lib/metashrew-as/assembly/indexer/bst/binarySearchU16
   i32.const 16
   i32.add
  end
 )
 (func $~lib/metashrew-as/assembly/indexer/bst/binarySearchU64 (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  local.get $0
  i64.const 4294967295
  i64.and
  i32.wrap_i64
  local.tee $2
  local.get $1
  select
  i32.eqz
  local.get $0
  i64.const 32
  i64.shr_u
  i64.const 4294967295
  i64.and
  i32.wrap_i64
  local.tee $3
  i32.const 0
  i32.ne
  i32.and
  if
   local.get $3
   local.get $1
   call $~lib/metashrew-as/assembly/indexer/bst/binarySearchU32
   return
  end
  local.get $2
  local.get $1
  call $~lib/metashrew-as/assembly/indexer/bst/binarySearchU32
  i32.const 32
  i32.add
 )
 (func $~lib/metashrew-as/assembly/indexer/bst/binarySearchU128 (param $0 i64) (param $1 i64) (param $2 i32) (result i32)
  i64.const 0
  local.get $1
  local.get $2
  select
  i64.eqz
  local.get $0
  i64.const 0
  i64.ne
  i32.and
  if (result i32)
   local.get $0
   local.get $2
   call $~lib/metashrew-as/assembly/indexer/bst/binarySearchU64
  else
   local.get $1
   local.get $2
   call $~lib/metashrew-as/assembly/indexer/bst/binarySearchU64
   i32.const -64
   i32.sub
  end
 )
 (func $~lib/metashrew-as/assembly/indexer/bst/binarySearchU256 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  local.get $0
  i64.load
  local.tee $2
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $2
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $2
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $2
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  local.tee $2
  local.get $0
  i64.load offset=8
  local.tee $3
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $3
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $3
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $3
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  local.tee $3
  i64.or
  local.tee $6
  local.get $0
  i64.load offset=16
  local.tee $4
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $4
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $4
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $4
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  local.tee $4
  local.get $0
  i64.load offset=24
  local.tee $5
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $5
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $5
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $5
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  local.tee $5
  i64.or
  local.tee $7
  i64.or
  i64.eqz
  if
   i32.const -1
   return
  end
  i64.const 0
  local.get $7
  local.get $1
  select
  i64.eqz
  local.get $6
  i64.const 0
  i64.ne
  i32.and
  if (result i32)
   local.get $2
   local.get $3
   local.get $1
   call $~lib/metashrew-as/assembly/indexer/bst/binarySearchU128
  else
   local.get $4
   local.get $5
   local.get $1
   call $~lib/metashrew-as/assembly/indexer/bst/binarySearchU128
   i32.const 128
   i32.add
  end
 )
 (func $~lib/metashrew-as/assembly/indexer/bst/BST<u64>#_findBoundaryFromPartial (param $0 i32) (param $1 i32) (param $2 i32) (result i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  loop $while-continue|0
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   local.tee $3
   i32.const 8
   i32.ne
   if
    block $while-break|0
     local.get $3
     i32.const 1
     i32.add
     call $~lib/arraybuffer/ArrayBuffer#constructor
     local.tee $3
     local.get $1
     local.get $1
     i32.const 20
     i32.sub
     i32.load offset=16
     memory.copy
     local.get $0
     local.get $1
     call $~lib/metashrew-as/assembly/indexer/bst/BST<u64>#getMaskPointer
     call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#get
     local.tee $4
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.eqz
     if
      i32.const 32
      call $~lib/arraybuffer/ArrayBuffer#constructor
      local.set $4
     end
     local.get $4
     i32.const 20
     i32.sub
     i32.load offset=16
     if (result i32)
      local.get $4
     else
      i32.const 32
      call $~lib/arraybuffer/ArrayBuffer#constructor
     end
     local.get $2
     call $~lib/metashrew-as/assembly/indexer/bst/binarySearchU256
     local.tee $4
     i32.const -1
     i32.eq
     br_if $while-break|0
     local.get $3
     local.get $1
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.add
     local.get $4
     i32.store8
     local.get $3
     local.set $1
     br $while-continue|0
    end
   end
  end
  local.get $1
  i64.load
  local.tee $5
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $5
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $5
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $5
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
 )
 (func $~lib/metashrew-as/assembly/indexer/bst/BST<u64>#seekGreater (param $0 i32) (param $1 i64) (result i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 8
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  local.get $1
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $1
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $1
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $1
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  i64.store
  loop $do-loop|0
   local.get $3
   local.get $3
   i32.const 20
   i32.sub
   i32.load offset=16
   call $~lib/metashrew-as/assembly/utils/box/Box#constructor
   local.tee $4
   local.get $4
   i32.load offset=4
   i32.const 1
   i32.sub
   i32.store offset=4
   local.get $4
   i32.load offset=4
   call $~lib/arraybuffer/ArrayBuffer#constructor
   local.tee $2
   local.get $4
   i32.load
   local.get $4
   i32.load offset=4
   memory.copy
   local.get $0
   local.get $2
   call $~lib/metashrew-as/assembly/indexer/bst/BST<u64>#getMaskPointer
   call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#get
   local.tee $4
   i32.const 20
   i32.sub
   i32.load offset=16
   if
    local.get $4
    local.get $3
    local.get $2
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.add
    i32.load8_u
    call $~lib/metashrew-as/assembly/indexer/bst/maskGreaterThan
    local.get $4
    i32.const 1
    call $~lib/metashrew-as/assembly/indexer/bst/binarySearchU256
    local.tee $4
    i32.const -1
    i32.ne
    if
     i32.const 2
     i32.const 2
     i32.const 27
     call $~lib/rt/__newArray
     local.tee $3
     i32.load offset=4
     drop
     local.get $3
     i32.const 0
     local.get $2
     local.get $2
     i32.const 20
     i32.sub
     i32.load offset=16
     call $~lib/metashrew-as/assembly/utils/box/Box#constructor
     call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
     i32.const 1
     call $~lib/arraybuffer/ArrayBuffer#constructor
     local.tee $2
     local.get $4
     i32.store8
     local.get $3
     i32.const 1
     local.get $2
     local.get $2
     i32.const 20
     i32.sub
     i32.load offset=16
     call $~lib/metashrew-as/assembly/utils/box/Box#constructor
     call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
     local.get $0
     local.get $3
     call $~lib/metashrew-as/assembly/utils/box/Box.concat
     i32.const 1
     call $~lib/metashrew-as/assembly/indexer/bst/BST<u64>#_findBoundaryFromPartial
     return
    end
   end
   local.get $2
   local.tee $3
   i32.const 20
   i32.sub
   i32.load offset=16
   br_if $do-loop|0
  end
  i64.const 0
 )
 (func $assembly/index/rangeLength<u64> (param $0 i32) (param $1 i64) (param $2 i64) (result i64)
  (local $3 i64)
  local.get $0
  local.get $1
  call $~lib/metashrew-as/assembly/indexer/bst/BST<u64>#seekGreater
  local.tee $3
  i64.eqz
  local.get $2
  local.get $3
  i64.lt_u
  i32.or
  if
   local.get $2
   local.get $1
   i64.sub
   return
  end
  local.get $3
  local.get $1
  i64.sub
 )
 (func $assembly/index/SatRanges#pull~anonymous|0 (param $0 i64) (param $1 i32) (param $2 i32)
  local.get $0
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $assembly/index/setSat
 )
 (func $~lib/metashrew-as/assembly/utils/utils/parsePushOp (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  i32.eqz
  if
   local.get $0
   return
  end
  local.get $0
  i32.load
  local.tee $2
  i32.load8_u
  local.set $1
  local.get $0
  local.get $2
  i32.const 1
  i32.add
  i32.store
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.sub
  i32.store offset=4
  block $folding-inner0
   local.get $1
   i32.const 76
   i32.eq
   if
    local.get $0
    i32.load
    i32.load8_u
    local.set $1
    local.get $0
    local.get $0
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get $0
    local.get $0
    i32.load offset=4
    i32.const 1
    i32.sub
    i32.store offset=4
    br $folding-inner0
   end
   local.get $1
   i32.const 77
   i32.eq
   if
    local.get $0
    i32.load
    local.tee $2
    i32.load16_u
    local.set $1
    local.get $0
    local.get $2
    i32.const 2
    i32.add
    i32.store
    local.get $0
    local.get $0
    i32.load offset=4
    i32.const 2
    i32.sub
    i32.store offset=4
    br $folding-inner0
   end
   local.get $1
   i32.const 78
   i32.eq
   if
    local.get $0
    i32.load
    local.tee $2
    i32.load
    local.set $1
    local.get $0
    local.get $2
    i32.const 4
    i32.add
    i32.store
    local.get $0
    local.get $0
    i32.load offset=4
    i32.const 4
    i32.sub
    i32.store offset=4
    br $folding-inner0
   end
   local.get $1
   i32.const 79
   i32.eq
   if
    i32.const 0
    i32.const 0
    call $~lib/metashrew-as/assembly/utils/box/Box#constructor
    return
   end
   local.get $1
   i32.const 81
   i32.eq
   if
    i32.const 0
    i32.const 0
    call $~lib/metashrew-as/assembly/utils/box/Box#constructor
    return
   end
   local.get $1
   i32.const 96
   i32.le_u
   local.get $1
   i32.const 82
   i32.ge_u
   i32.and
   if
    i32.const 0
    local.get $1
    i32.const 80
    i32.sub
    call $~lib/metashrew-as/assembly/utils/box/Box#constructor
    return
   end
   local.get $1
   i32.const 75
   i32.le_u
   i32.const 0
   local.get $1
   select
   br_if $folding-inner0
   local.get $1
   i32.eqz
   if
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    call $~lib/metashrew-as/assembly/utils/box/Box#constructor
    local.tee $0
    i32.const 0
    i32.store offset=4
    local.get $0
    return
   end
   local.get $0
   return
  end
  local.get $0
  local.get $1
  call $~lib/metashrew-as/assembly/utils/utils/parseBytes
 )
 (func $~lib/metashrew-as/assembly/utils/utils/decodeTag (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  i32.eqz
  if
   local.get $0
   i32.load offset=4
   return
  end
  local.get $0
  i32.load offset=4
  i32.eqz
  if
   i32.const 0
   return
  end
  i32.const 4
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.gt_u
  if
   i32.const 0
   return
  end
  local.get $1
  local.get $2
  local.get $0
  i32.load offset=4
  memory.copy
  local.get $1
  i32.load
 )
 (func $~lib/metashrew-as/assembly/blockdata/inscription/Field#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 8
  i32.const 44
  call $~lib/rt/stub/__new
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
 )
 (func $~lib/metashrew-as/assembly/utils/utils/_fromPushBox (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load
  i32.eqz
  if
   local.get $0
   i32.load offset=4
   if
    i32.const 1
    call $~lib/arraybuffer/ArrayBuffer#constructor
    local.tee $1
    local.get $0
    i32.load offset=4
    i32.store8
    local.get $1
    return
   else
    i32.const 4
    call $~lib/arraybuffer/ArrayBuffer#constructor
    local.tee $0
    i32.const -1
    i32.store
    local.get $0
    return
   end
   unreachable
  end
  local.get $0
  i32.load offset=4
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  memory.copy
  local.get $1
 )
 (func $~lib/metashrew-as/assembly/blockdata/inscription/Inscription#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 9
  i32.const 43
  call $~lib/rt/stub/__new
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store8 offset=8
  local.get $2
  i32.const 0
  i32.store
  i32.const 16
  i32.const 45
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  i32.const 32
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $3
  i32.const 0
  i32.const 32
  memory.fill
  local.get $1
  local.get $3
  i32.store
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  i32.const 32
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store8 offset=8
  local.get $2
  block $__inlined_func$~lib/metashrew-as/assembly/blockdata/inscription/parseEnvelope$47 (result i32)
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   call $~lib/metashrew-as/assembly/utils/box/Box#constructor
   local.tee $4
   i32.load
   local.set $0
   local.get $4
   i32.load offset=4
   local.set $3
   loop $while-continue|0
    local.get $0
    local.get $4
    i32.load
    local.get $4
    i32.load offset=4
    i32.add
    i32.const 1
    i32.sub
    i32.lt_u
    if
     block $while-break|0
      local.get $0
      i32.load8_u
      if (result i32)
       i32.const 0
      else
       local.get $0
       i32.load8_u offset=1
       i32.const 99
       i32.eq
      end
      if
       local.get $0
       i32.const 2
       i32.add
       local.set $0
       local.get $3
       i32.const 2
       i32.sub
       local.set $3
       br $while-break|0
      end
      local.get $0
      local.get $3
      call $~lib/metashrew-as/assembly/utils/box/Box#constructor
      local.set $1
      local.get $0
      i32.load8_u
      local.tee $5
      i32.const 79
      i32.le_u
      if (result i32)
       i32.const 1
      else
       local.get $5
       i32.const 96
       i32.le_u
       local.get $5
       i32.const 80
       i32.gt_u
       i32.and
      end
      if (result i32)
       local.get $1
       call $~lib/metashrew-as/assembly/utils/utils/parsePushOp
       drop
       local.get $1
       i32.load offset=4
       local.set $3
       local.get $1
       i32.load
      else
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $0
       i32.const 1
       i32.add
      end
      local.set $0
      br $while-continue|0
     end
    end
   end
   local.get $0
   local.get $3
   call $~lib/metashrew-as/assembly/utils/box/Box#constructor
   local.set $1
   loop $while-continue|1
    local.get $1
    i32.load offset=4
    if
     local.get $1
     i32.load
     local.tee $3
     i32.load8_u
     i32.const 104
     i32.eq
     if
      local.get $0
      local.get $3
      local.get $0
      i32.sub
      call $~lib/metashrew-as/assembly/utils/box/Box#constructor
      br $__inlined_func$~lib/metashrew-as/assembly/blockdata/inscription/parseEnvelope$47
     end
     local.get $1
     call $~lib/metashrew-as/assembly/utils/utils/parsePushOp
     drop
     br $while-continue|1
    end
   end
   i32.const 0
  end
  local.tee $1
  i32.load
  local.get $1
  i32.load offset=4
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  i32.store
  local.get $1
  call $~lib/metashrew-as/assembly/utils/utils/parsePushOp
  i32.load
  i32.load
  i32.const 16777215
  i32.and
  i32.const 6582895
  i32.ne
  if
   i32.const 0
   i32.const 7248
   i32.const 74
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 16
  i32.const 30
  call $~lib/rt/stub/__new
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.store offset=8
  local.get $3
  i32.const 0
  i32.store offset=12
  i32.const 32
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.const 32
  memory.fill
  local.get $3
  local.get $0
  i32.store
  local.get $3
  local.get $0
  i32.store offset=4
  local.get $3
  i32.const 32
  i32.store offset=8
  local.get $3
  i32.const 0
  i32.store offset=12
  local.get $1
  call $~lib/metashrew-as/assembly/utils/utils/parsePushOp
  local.set $0
  loop $for-loop|0
   local.get $1
   i32.load offset=4
   if
    block $for-break0
     local.get $0
     call $~lib/metashrew-as/assembly/utils/utils/decodeTag
     if (result i32)
      local.get $0
      call $~lib/metashrew-as/assembly/utils/utils/decodeTag
      i32.const 11
      i32.le_u
     else
      i32.const 0
     end
     if
      local.get $0
      call $~lib/metashrew-as/assembly/utils/utils/decodeTag
      local.set $0
      local.get $1
      call $~lib/metashrew-as/assembly/utils/utils/parsePushOp
      drop
      local.get $2
      i32.load offset=4
      local.get $0
      local.get $1
      call $~lib/metashrew-as/assembly/utils/utils/parsePushOp
      call $~lib/metashrew-as/assembly/utils/utils/_fromPushBox
      call $~lib/metashrew-as/assembly/blockdata/inscription/Field#constructor
      call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Output>#push
      drop
     else
      local.get $0
      call $~lib/metashrew-as/assembly/utils/utils/decodeTag
      i32.eqz
      br_if $for-break0
     end
     local.get $1
     call $~lib/metashrew-as/assembly/utils/utils/parsePushOp
     local.set $0
     br $for-loop|0
    end
   end
  end
  local.get $1
  if
   loop $while-continue|10
    local.get $1
    i32.load offset=4
    if
     local.get $3
     local.get $1
     call $~lib/metashrew-as/assembly/utils/utils/parsePushOp
     call $~lib/metashrew-as/assembly/utils/utils/_fromPushBox
     call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Output>#push
     drop
     br $while-continue|10
    end
   end
  end
  local.get $3
  call $~lib/array/Array<~lib/arraybuffer/ArrayBuffer>#map<~lib/metashrew-as/assembly/utils/box/Box>
  call $~lib/metashrew-as/assembly/utils/box/Box.concat
  local.set $0
  local.get $2
  i32.load offset=4
  i32.const 0
  local.get $0
  call $~lib/metashrew-as/assembly/blockdata/inscription/Field#constructor
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Output>#push
  drop
  local.get $2
 )
 (func $~lib/metashrew-as/assembly/blockdata/sat/SatPoint#constructor (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  i32.const 12
  i32.const 46
  call $~lib/rt/stub/__new
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=8
  local.get $2
  local.get $1
  i64.store
  local.get $2
 )
 (func $~lib/metashrew-as/assembly/blockdata/sat/SatPoint#toArrayBuffer (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=8
  local.tee $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 8
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $2
  local.get $0
  i64.load
  i64.store
  i32.const 2
  i32.const 2
  i32.const 27
  call $~lib/rt/__newArray
  local.tee $0
  i32.load offset=4
  drop
  local.get $0
  i32.const 0
  local.get $1
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  local.get $0
  i32.const 1
  local.get $2
  local.get $2
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
  local.get $0
  call $~lib/metashrew-as/assembly/utils/box/Box.concat
 )
 (func $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#selectValue<u64> (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  i32.const 8
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $2
  local.get $1
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $1
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $1
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $1
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  i64.store
  local.get $0
  local.get $2
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
 )
 (func $~lib/metashrew-as/assembly/indexer/bst/maskLowerThan (param $0 i32) (param $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 4
  call $~lib/array/Array<u64>#constructor
  local.tee $3
  i32.const 0
  local.get $0
  i64.load
  local.tee $2
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $2
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $2
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $2
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  call $~lib/array/Array<u64>#__set
  local.get $3
  i32.const 1
  local.get $0
  i64.load offset=8
  local.tee $2
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $2
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $2
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $2
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  call $~lib/array/Array<u64>#__set
  local.get $3
  i32.const 2
  local.get $0
  i64.load offset=16
  local.tee $2
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $2
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $2
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $2
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  call $~lib/array/Array<u64>#__set
  local.get $3
  i32.const 3
  local.get $0
  i64.load offset=24
  local.tee $2
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $2
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $2
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $2
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  call $~lib/array/Array<u64>#__set
  local.get $3
  local.get $1
  i32.const 255
  i32.and
  local.tee $1
  i32.const 6
  i32.shr_u
  local.tee $5
  local.get $3
  local.get $5
  call $~lib/array/Array<u64>#__get
  i64.const 1
  local.get $1
  i32.const 63
  i32.and
  i64.extend_i32_u
  local.tee $2
  i64.shl
  i64.const 1
  i64.sub
  i64.const 64
  local.get $2
  i64.sub
  i64.shl
  i64.and
  call $~lib/array/Array<u64>#__set
  local.get $5
  i32.const 1
  i32.add
  local.set $1
  loop $for-loop|0
   local.get $1
   i32.const 255
   i32.and
   local.tee $5
   i32.const 4
   i32.lt_u
   if
    local.get $3
    local.get $5
    i64.const 0
    call $~lib/array/Array<u64>#__set
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $4
   i32.const 4
   i32.lt_s
   if
    local.get $0
    local.get $4
    i32.const 3
    i32.shl
    i32.add
    local.get $3
    local.get $4
    call $~lib/array/Array<u64>#__get
    local.tee $2
    i64.const 8
    i64.shr_u
    i64.const 71777214294589695
    i64.and
    local.get $2
    i64.const 71777214294589695
    i64.and
    i64.const 8
    i64.shl
    i64.or
    local.tee $2
    i64.const 16
    i64.shr_u
    i64.const 281470681808895
    i64.and
    local.get $2
    i64.const 281470681808895
    i64.and
    i64.const 16
    i64.shl
    i64.or
    i64.const 32
    i64.rotr
    i64.store
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|1
   end
  end
 )
 (func $~lib/metashrew-as/assembly/indexer/bst/BST<u64>#seekLower (param $0 i32) (param $1 i64) (result i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 8
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  local.get $1
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $1
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $1
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $1
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  i64.store
  loop $do-loop|0
   local.get $3
   local.get $3
   i32.const 20
   i32.sub
   i32.load offset=16
   call $~lib/metashrew-as/assembly/utils/box/Box#constructor
   local.tee $4
   local.get $4
   i32.load offset=4
   i32.const 1
   i32.sub
   i32.store offset=4
   local.get $4
   i32.load offset=4
   call $~lib/arraybuffer/ArrayBuffer#constructor
   local.tee $2
   local.get $4
   i32.load
   local.get $4
   i32.load offset=4
   memory.copy
   local.get $0
   local.get $2
   call $~lib/metashrew-as/assembly/indexer/bst/BST<u64>#getMaskPointer
   call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#get
   local.tee $4
   i32.const 20
   i32.sub
   i32.load offset=16
   if
    local.get $4
    local.get $3
    local.get $2
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.add
    i32.load8_u
    call $~lib/metashrew-as/assembly/indexer/bst/maskLowerThan
    local.get $4
    i32.const 0
    call $~lib/metashrew-as/assembly/indexer/bst/binarySearchU256
    local.tee $4
    i32.const -1
    i32.ne
    if
     i32.const 2
     i32.const 2
     i32.const 27
     call $~lib/rt/__newArray
     local.tee $3
     i32.load offset=4
     drop
     local.get $3
     i32.const 0
     local.get $2
     local.get $2
     i32.const 20
     i32.sub
     i32.load offset=16
     call $~lib/metashrew-as/assembly/utils/box/Box#constructor
     call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
     i32.const 1
     call $~lib/arraybuffer/ArrayBuffer#constructor
     local.tee $2
     local.get $4
     i32.store8
     local.get $3
     i32.const 1
     local.get $2
     local.get $2
     i32.const 20
     i32.sub
     i32.load offset=16
     call $~lib/metashrew-as/assembly/utils/box/Box#constructor
     call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
     local.get $0
     local.get $3
     call $~lib/metashrew-as/assembly/utils/box/Box.concat
     i32.const 0
     call $~lib/metashrew-as/assembly/indexer/bst/BST<u64>#_findBoundaryFromPartial
     return
    end
   end
   local.get $2
   local.tee $3
   i32.const 20
   i32.sub
   i32.load offset=16
   br_if $do-loop|0
  end
  i64.const -1
 )
 (func $~lib/metashrew-as/assembly/indexer/bst/BST<u64>#get (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  i32.const 8
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $2
  local.get $1
  i64.const 8
  i64.shr_u
  i64.const 71777214294589695
  i64.and
  local.get $1
  i64.const 71777214294589695
  i64.and
  i64.const 8
  i64.shl
  i64.or
  local.tee $1
  i64.const 16
  i64.shr_u
  i64.const 281470681808895
  i64.and
  local.get $1
  i64.const 281470681808895
  i64.and
  i64.const 16
  i64.shl
  i64.or
  i64.const 32
  i64.rotr
  i64.store
  local.get $0
  i32.load
  local.get $2
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#get
  local.tee $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  local.tee $0
  i32.load offset=4
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $2
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  memory.copy
  local.get $2
 )
 (func $assembly/index/Index.indexTransactionInscriptions (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i64)
  (local $13 i32)
  (local $14 i64)
  loop $for-loop|0
   local.get $9
   local.get $0
   i32.load offset=12
   local.tee $4
   i32.load offset=12
   i32.lt_s
   if
    local.get $0
    i32.load offset=16
    i32.load offset=12
    local.get $10
    i32.gt_s
    if
     i32.const 0
     local.set $8
     block $__inlined_func$~lib/metashrew-as/assembly/blockdata/transaction/Input#inscription$1211
      local.get $4
      local.get $9
      call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Input>#__get
      i32.load offset=20
      local.tee $4
      i32.eqz
      br_if $__inlined_func$~lib/metashrew-as/assembly/blockdata/transaction/Input#inscription$1211
      i32.const 0
      local.set $7
      block $__inlined_func$~lib/metashrew-as/assembly/blockdata/witness/Witness#tapscript$1339
       local.get $4
       i32.load offset=4
       local.tee $5
       i32.load offset=12
       local.tee $6
       i32.const 0
       i32.le_s
       br_if $__inlined_func$~lib/metashrew-as/assembly/blockdata/witness/Witness#tapscript$1339
       local.get $6
       i32.const 2
       i32.ge_s
       if (result i32)
        local.get $6
        i32.const 1
        i32.sub
        local.tee $11
        local.get $6
        local.get $5
        local.get $11
        call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Input>#__get
        i32.load8_u offset=6
        select
        local.tee $5
        i32.const 1
        i32.le_s
        br_if $__inlined_func$~lib/metashrew-as/assembly/blockdata/witness/Witness#tapscript$1339
        local.get $4
        i32.load offset=4
        local.get $5
        i32.const 2
        i32.sub
        call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Input>#__get
        i32.load8_u offset=5
        i32.eqz
        br_if $__inlined_func$~lib/metashrew-as/assembly/blockdata/witness/Witness#tapscript$1339
        local.get $4
        i32.load offset=4
        local.get $5
        i32.const 1
        i32.sub
        call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Input>#__get
        i32.load
        local.tee $6
        i32.load offset=4
        i32.const 33
        i32.lt_u
        if (result i32)
         i32.const 1
        else
         local.get $6
         i32.load offset=4
         i32.const 33
         i32.sub
         i32.const 31
         i32.and
        end
        br_if $__inlined_func$~lib/metashrew-as/assembly/blockdata/witness/Witness#tapscript$1339
        local.get $4
        i32.load offset=4
        local.get $5
        i32.const 2
        i32.sub
        call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Input>#__get
        i32.load
        local.tee $4
        i32.load
        local.get $4
        i32.load offset=4
        call $~lib/metashrew-as/assembly/utils/box/Box#constructor
       else
        i32.const 0
       end
       local.set $7
      end
      local.get $7
      if (result i32)
       block $__inlined_func$~lib/metashrew-as/assembly/blockdata/witness/Witness.isInscribed$68 (result i32)
        local.get $7
        i32.load
        local.get $7
        i32.load offset=4
        call $~lib/metashrew-as/assembly/utils/box/Box#constructor
        local.tee $4
        i32.load
        local.tee $5
        local.get $4
        i32.load offset=4
        local.tee $6
        i32.add
        local.set $4
        loop $while-continue|0
         local.get $5
         local.get $4
         i32.const 1
         i32.sub
         i32.lt_u
         if
          block $while-break|0
           local.get $5
           i32.load8_u
           if (result i32)
            i32.const 0
           else
            local.get $5
            i32.load8_u offset=1
            i32.const 99
            i32.eq
           end
           if
            local.get $5
            i32.const 2
            i32.add
            local.set $5
            local.get $6
            i32.const 2
            i32.sub
            local.set $6
            br $while-break|0
           end
           local.get $5
           i32.const 1
           i32.add
           local.set $5
           local.get $6
           i32.const 1
           i32.sub
           local.set $6
           br $while-continue|0
          end
         end
        end
        loop $while-continue|1
         local.get $4
         local.get $5
         i32.gt_u
         if
          local.get $4
          i32.load8_u
          i32.const 104
          i32.ne
          if
           local.get $4
           i32.const 1
           i32.sub
           local.set $4
           local.get $6
           i32.const 1
           i32.sub
           local.set $6
           br $while-continue|1
          end
         end
        end
        i32.const 0
        local.get $5
        local.get $6
        call $~lib/metashrew-as/assembly/utils/box/Box#constructor
        local.tee $4
        i32.load offset=4
        if (result i32)
         local.get $4
         i32.load
         i32.load8_u
         local.tee $5
         i32.const 79
         i32.le_u
         if (result i32)
          i32.const 1
         else
          local.get $5
          i32.const 96
          i32.le_u
          local.get $5
          i32.const 80
          i32.gt_u
          i32.and
         end
        else
         i32.const 0
        end
        i32.eqz
        br_if $__inlined_func$~lib/metashrew-as/assembly/blockdata/witness/Witness.isInscribed$68
        drop
        local.get $4
        call $~lib/metashrew-as/assembly/utils/utils/parsePushOp
        i32.load
        i32.load
        i32.const 16777215
        i32.and
        i32.const 6582895
        i32.eq
       end
      else
       i32.const 0
      end
      i32.eqz
      br_if $__inlined_func$~lib/metashrew-as/assembly/blockdata/transaction/Input#inscription$1211
      local.get $7
      call $~lib/metashrew-as/assembly/blockdata/inscription/Inscription#constructor
      local.set $8
     end
     local.get $8
     if
      global.get $assembly/tables/NEXT_SEQUENCE_NUMBER
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#getValue<u64>
      local.set $12
      local.get $1
      local.get $10
      call $~lib/metashrew-as/assembly/blockdata/transaction/OutPoint.from
      i32.load
      local.tee $4
      i32.load offset=4
      call $~lib/arraybuffer/ArrayBuffer#constructor
      local.tee $5
      local.get $4
      i32.load
      local.get $4
      i32.load offset=4
      memory.copy
      local.get $5
      local.get $3
      call $~lib/metashrew-as/assembly/blockdata/sat/SatPoint#constructor
      call $~lib/metashrew-as/assembly/blockdata/sat/SatPoint#toArrayBuffer
      local.set $4
      global.get $assembly/tables/OUTPOINT_TO_VALUE
      local.set $6
      local.get $0
      i32.load offset=12
      local.get $9
      call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Input>#__get
      local.tee $7
      i32.load offset=4
      i32.load
      i32.const 32
      call $~lib/metashrew-as/assembly/utils/box/Box#constructor
      local.tee $11
      i32.load offset=4
      call $~lib/arraybuffer/ArrayBuffer#constructor
      local.tee $13
      local.get $11
      i32.load
      local.get $11
      i32.load offset=4
      memory.copy
      local.get $13
      call $~lib/metashrew-as/assembly/utils/utils/reverse
      local.get $7
      i32.load offset=8
      call $~lib/metashrew-as/assembly/blockdata/transaction/OutPoint.from
      i32.load
      local.tee $7
      i32.load offset=4
      call $~lib/arraybuffer/ArrayBuffer#constructor
      local.tee $11
      local.get $7
      i32.load
      local.get $7
      i32.load offset=4
      memory.copy
      local.get $6
      local.get $11
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#getValue<u64>
      local.get $3
      i64.add
      local.tee $3
      local.get $0
      i32.load offset=16
      local.get $10
      call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Input>#__get
      i64.load offset=8
      i64.ge_u
      if
       local.get $10
       i32.const 1
       i32.add
       local.set $10
       i64.const 0
       local.set $3
      end
      global.get $assembly/tables/OUTPOINT_TO_SAT
      local.get $5
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
      i32.const 0
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#selectIndex
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#getValue<u64>
      local.set $14
      i32.const 2
      i32.const 2
      i32.const 27
      call $~lib/rt/__newArray
      local.tee $6
      i32.load offset=4
      drop
      local.get $6
      i32.const 0
      local.get $4
      local.get $4
      i32.const 20
      i32.sub
      i32.load offset=16
      call $~lib/metashrew-as/assembly/utils/box/Box#constructor
      call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
      i32.const 4
      call $~lib/arraybuffer/ArrayBuffer#constructor
      local.tee $7
      i32.const 0
      i32.store
      local.get $6
      i32.const 1
      local.get $7
      local.get $7
      i32.const 20
      i32.sub
      i32.load offset=16
      call $~lib/metashrew-as/assembly/utils/box/Box#constructor
      call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
      local.get $6
      call $~lib/metashrew-as/assembly/utils/box/Box.concat
      local.set $6
      global.get $assembly/tables/SATPOINT_TO_SAT
      local.get $4
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
      local.set $7
      i32.const 8
      call $~lib/arraybuffer/ArrayBuffer#constructor
      local.tee $11
      local.get $14
      i64.store
      local.get $7
      local.get $11
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#set
      global.get $assembly/tables/SATPOINT_TO_INSCRIPTION_ID
      local.get $4
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
      local.get $6
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#set
      global.get $assembly/tables/INSCRIPTION_ID_TO_SATPOINT
      local.get $6
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
      local.get $4
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#set
      global.get $assembly/tables/INSCRIPTION_ID_TO_BLOCKHEIGHT
      local.get $6
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
      local.set $4
      i32.const 4
      call $~lib/arraybuffer/ArrayBuffer#constructor
      local.tee $7
      local.get $2
      i32.store
      local.get $4
      local.get $7
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#set
      global.get $assembly/tables/HEIGHT_TO_INSCRIPTION_IDS
      local.get $2
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#selectValue<u32>
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#extend
      local.get $6
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#set
      global.get $assembly/tables/SEQUENCE_NUMBER_TO_INSCRIPTION_ID
      local.get $12
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#selectValue<u64>
      local.get $6
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#set
      global.get $assembly/tables/INSCRIPTION_ID_TO_SEQUENCE_NUMBER
      local.get $6
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
      local.set $4
      i32.const 8
      call $~lib/arraybuffer/ArrayBuffer#constructor
      local.tee $7
      local.get $12
      i64.store
      local.get $4
      local.get $7
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#set
      global.get $assembly/tables/INSCRIPTION_ID_TO_INSCRIPTION
      local.get $6
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
      local.set $4
      local.get $8
      i32.load
      local.tee $6
      i32.load offset=4
      call $~lib/arraybuffer/ArrayBuffer#constructor
      local.tee $7
      local.get $6
      i32.load
      local.get $6
      i32.load offset=4
      memory.copy
      local.get $4
      local.get $7
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#set
      global.get $assembly/tables/OUTPOINT_TO_SEQUENCE_NUMBERS
      local.get $5
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#extend
      local.set $4
      i32.const 8
      call $~lib/arraybuffer/ArrayBuffer#constructor
      local.tee $5
      local.get $12
      i64.store
      local.get $4
      local.get $5
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#set
     else
      local.get $0
      i32.load offset=12
      local.get $9
      call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Input>#__get
      local.tee $4
      i32.load offset=4
      i32.load
      i32.const 32
      call $~lib/metashrew-as/assembly/utils/box/Box#constructor
      local.tee $5
      i32.load offset=4
      call $~lib/arraybuffer/ArrayBuffer#constructor
      local.tee $6
      local.get $5
      i32.load
      local.get $5
      i32.load offset=4
      memory.copy
      local.get $6
      call $~lib/metashrew-as/assembly/utils/utils/reverse
      local.get $4
      i32.load offset=8
      call $~lib/metashrew-as/assembly/blockdata/transaction/OutPoint.from
      i32.load
      local.tee $4
      i32.load offset=4
      call $~lib/arraybuffer/ArrayBuffer#constructor
      local.tee $5
      local.get $4
      i32.load
      local.get $4
      i32.load offset=4
      memory.copy
      global.get $assembly/tables/OUTPOINT_TO_SEQUENCE_NUMBERS
      local.get $5
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#getListValues<u64>
      local.set $4
      i32.const 0
      local.set $7
      loop $for-loop|1
       local.get $7
       local.get $4
       i32.load offset=12
       i32.lt_s
       if
        global.get $assembly/tables/SEQUENCE_NUMBER_TO_INSCRIPTION_ID
        local.get $4
        local.get $7
        call $~lib/array/Array<u64>#__get
        call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#selectValue<u64>
        call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#get
        local.set $5
        global.get $assembly/tables/INSCRIPTION_ID_TO_SATPOINT
        local.get $5
        call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
        call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#get
        local.set $6
        global.get $assembly/tables/SATPOINT_TO_SAT
        local.get $6
        call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
        call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#getValue<u64>
        local.set $12
        global.get $assembly/tables/SAT_TO_OUTPOINT
        local.get $12
        i64.const 1
        i64.add
        call $~lib/metashrew-as/assembly/indexer/bst/BST<u64>#seekLower
        local.set $14
        global.get $assembly/tables/SAT_TO_OUTPOINT
        local.get $14
        call $~lib/metashrew-as/assembly/indexer/bst/BST<u64>#get
        local.tee $6
        local.get $12
        local.get $14
        i64.sub
        call $~lib/metashrew-as/assembly/blockdata/sat/SatPoint#constructor
        call $~lib/metashrew-as/assembly/blockdata/sat/SatPoint#toArrayBuffer
        local.set $8
        global.get $assembly/tables/SATPOINT_TO_SAT
        local.get $8
        call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
        local.set $11
        i32.const 8
        call $~lib/arraybuffer/ArrayBuffer#constructor
        local.tee $13
        local.get $12
        i64.store
        local.get $11
        local.get $13
        call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#set
        global.get $assembly/tables/SATPOINT_TO_INSCRIPTION_ID
        local.get $8
        call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
        local.get $5
        call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#set
        global.get $assembly/tables/INSCRIPTION_ID_TO_SATPOINT
        local.get $5
        call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
        local.get $8
        call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#set
        global.get $assembly/tables/OUTPOINT_TO_SEQUENCE_NUMBERS
        local.get $6
        call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
        local.set $5
        local.get $4
        local.get $7
        call $~lib/array/Array<u64>#__get
        local.set $12
        local.get $5
        call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#extend
        local.set $5
        i32.const 8
        call $~lib/arraybuffer/ArrayBuffer#constructor
        local.tee $6
        local.get $12
        i64.store
        local.get $5
        local.get $6
        call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#set
        local.get $7
        i32.const 1
        i32.add
        local.set $7
        br $for-loop|1
       end
      end
     end
     local.get $9
     i32.const 1
     i32.add
     local.set $9
     br $for-loop|0
    end
   end
  end
 )
 (func $assembly/index/Index.indexBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i64)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  global.get $assembly/tables/HEIGHT_TO_BLOCKHASH
  local.get $0
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#selectValue<u32>
  local.get $1
  call $~lib/metashrew-as/assembly/blockdata/block/Block#blockhash
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#set
  global.get $assembly/tables/BLOCKHASH_TO_HEIGHT
  local.get $1
  call $~lib/metashrew-as/assembly/blockdata/block/Block#blockhash
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
  local.set $2
  i32.const 4
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $4
  local.get $0
  i32.store
  local.get $2
  local.get $4
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#set
  loop $for-loop|0
   local.get $3
   local.get $1
   i32.load offset=8
   local.tee $4
   i32.load offset=12
   i32.lt_s
   if
    i32.const 0
    local.set $2
    local.get $4
    local.get $3
    call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Input>#__get
    local.tee $4
    call $~lib/metashrew-as/assembly/blockdata/transaction/Transaction#txid
    local.set $5
    loop $for-loop|00
     local.get $2
     local.get $4
     i32.load offset=16
     i32.load offset=12
     i32.lt_s
     if
      global.get $assembly/tables/OUTPOINT_TO_VALUE
      local.set $7
      local.get $5
      local.get $2
      call $~lib/metashrew-as/assembly/blockdata/transaction/OutPoint.from
      i32.load
      local.tee $8
      i32.load offset=4
      call $~lib/arraybuffer/ArrayBuffer#constructor
      local.tee $9
      local.get $8
      i32.load
      local.get $8
      i32.load offset=4
      memory.copy
      local.get $7
      local.get $9
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
      local.set $7
      local.get $4
      i32.load offset=16
      local.get $2
      call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Input>#__get
      i64.load offset=8
      local.set $6
      i32.const 8
      call $~lib/arraybuffer/ArrayBuffer#constructor
      local.tee $8
      local.get $6
      i64.store
      local.get $7
      local.get $8
      call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#set
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|00
     end
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $1
  i32.load offset=8
  i32.const 0
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Input>#__get
  local.set $2
  global.get $assembly/tables/STARTING_SAT
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#getValue<u64>
  local.set $6
  i64.const 5000000000
  i64.const 1
  local.get $0
  i64.extend_i32_u
  i64.const 210000
  i64.div_u
  i64.shl
  i64.div_u
  local.set $13
  global.get $assembly/tables/STARTING_SAT
  local.set $3
  i32.const 8
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $4
  local.get $6
  local.get $13
  i64.add
  i64.store
  local.get $3
  local.get $4
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#set
  i32.const 1
  call $~lib/array/Array<u64>#constructor
  local.tee $3
  i32.const 0
  local.get $6
  call $~lib/array/Array<u64>#__set
  i32.const 1
  call $~lib/array/Array<u64>#constructor
  local.tee $4
  i32.const 0
  local.get $13
  call $~lib/array/Array<u64>#__set
  local.get $3
  local.get $4
  call $assembly/index/SatRanges#constructor
  call $assembly/index/SatSource#constructor
  local.set $10
  local.get $2
  call $assembly/index/SatSink#constructor
  local.tee $8
  local.get $10
  call $assembly/index/SatSink#consume
  i32.const 1
  local.set $7
  loop $for-loop|01
   local.get $7
   local.get $1
   i32.load offset=8
   local.tee $2
   i32.load offset=12
   i32.lt_s
   if
    local.get $2
    local.get $7
    call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Input>#__get
    local.tee $14
    call $assembly/index/SatSink#constructor
    local.set $9
    i32.const 0
    local.set $5
    i32.const 0
    local.set $2
    i32.const 0
    local.set $4
    i32.const 0
    local.set $3
    local.get $14
    i32.load offset=12
    local.tee $15
    i32.load offset=12
    local.tee $16
    i32.const 2
    i32.const 40
    call $~lib/rt/__newArray
    local.tee $17
    i32.load offset=4
    local.set $11
    loop $for-loop|02
     local.get $2
     local.get $16
     local.get $15
     i32.load offset=12
     local.tee $12
     local.get $12
     local.get $16
     i32.gt_s
     select
     i32.lt_s
     if
      local.get $2
      i32.const 2
      i32.shl
      local.tee $12
      local.get $15
      i32.load offset=4
      i32.add
      i32.load
      local.set $18
      i32.const 3
      global.set $~argumentsLength
      local.get $11
      local.get $12
      i32.add
      local.get $18
      local.get $2
      local.get $15
      i32.const 7184
      i32.load
      call_indirect (type $4)
      i32.store
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|02
     end
    end
    i32.const 0
    call $~lib/array/Array<u64>#constructor
    local.set $11
    loop $for-loop|003
     local.get $4
     local.get $17
     i32.load offset=12
     i32.lt_s
     if
      i32.const 0
      local.set $2
      loop $for-loop|1
       local.get $2
       local.get $17
       local.get $4
       call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Input>#__get
       i32.load offset=12
       i32.lt_s
       if
        local.get $17
        local.get $4
        call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Input>#__get
        local.get $2
        call $~lib/array/Array<u64>#__get
        local.set $13
        local.get $11
        local.get $11
        i32.load offset=12
        local.tee $12
        i32.const 1
        i32.add
        local.tee $15
        i32.const 3
        i32.const 1
        call $~lib/array/ensureCapacity
        local.get $11
        i32.load offset=4
        local.get $12
        i32.const 3
        i32.shl
        i32.add
        local.get $13
        i64.store
        local.get $11
        local.get $15
        i32.store offset=12
        local.get $2
        i32.const 1
        i32.add
        local.set $2
        br $for-loop|1
       end
      end
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|003
     end
    end
    local.get $11
    i32.load offset=12
    local.tee $2
    i32.const 0
    i32.le_s
    if (result i32)
     i32.const 1
    else
     local.get $2
    end
    call $~lib/array/Array<u64>#constructor
    local.set $2
    loop $for-loop|024
     local.get $3
     local.get $11
     i32.load offset=12
     i32.lt_s
     if
      local.get $2
      local.get $3
      global.get $assembly/tables/SAT_TO_OUTPOINT
      local.get $11
      local.get $3
      call $~lib/array/Array<u64>#__get
      local.get $6
      call $assembly/index/rangeLength<u64>
      call $~lib/array/Array<u64>#__set
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $for-loop|024
     end
    end
    local.get $11
    local.get $2
    call $assembly/index/SatRanges#constructor
    call $assembly/index/SatSource#constructor
    local.tee $2
    i32.load
    i32.load
    local.tee $3
    i32.load offset=12
    local.set $4
    loop $for-loop|0035
     local.get $5
     local.get $4
     local.get $3
     i32.load offset=12
     local.tee $11
     local.get $4
     local.get $11
     i32.lt_s
     select
     i32.lt_s
     if
      local.get $3
      i32.load offset=4
      local.get $5
      i32.const 3
      i32.shl
      i32.add
      i64.load
      local.set $13
      i32.const 3
      global.set $~argumentsLength
      local.get $13
      local.get $5
      local.get $3
      i32.const 7216
      i32.load
      call_indirect (type $13)
      local.get $5
      i32.const 1
      i32.add
      local.set $5
      br $for-loop|0035
     end
    end
    local.get $9
    local.get $2
    call $assembly/index/SatSink#consume
    local.get $14
    call $~lib/metashrew-as/assembly/blockdata/transaction/Transaction#txid
    local.set $3
    local.get $2
    call $assembly/index/SatSource#consumed
    i32.eqz
    if
     local.get $8
     local.get $2
     call $assembly/index/SatSink#consume
    end
    local.get $14
    local.get $3
    local.get $0
    call $assembly/index/Index.indexTransactionInscriptions
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|01
   end
  end
  loop $while-continue|0
   local.get $10
   call $assembly/index/SatSource#consumed
   i32.eqz
   if
    local.get $10
    i32.load
    i32.load offset=4
    local.get $10
    i32.load offset=4
    call $~lib/array/Array<u64>#__get
    drop
    local.get $10
    i64.load offset=8
    drop
    i32.const 36
    call $~lib/arraybuffer/ArrayBuffer#constructor
    local.tee $0
    i32.const 44510
    i32.store offset=34
    local.get $10
    i32.load
    i32.load
    local.get $10
    i32.load offset=4
    call $~lib/array/Array<u64>#__get
    local.get $10
    i64.load offset=8
    i64.add
    local.tee $6
    local.get $0
    call $assembly/index/setSat
    global.get $assembly/tables/OUTPOINT_TO_SAT
    local.get $0
    call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
    call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#extend
    local.set $0
    i32.const 8
    call $~lib/arraybuffer/ArrayBuffer#constructor
    local.tee $1
    local.get $6
    i64.store
    local.get $0
    local.get $1
    call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#set
    local.get $10
    i64.const 0
    i64.store offset=8
    local.get $10
    local.get $10
    i32.load offset=4
    i32.const 1
    i32.add
    i32.store offset=4
    br $while-continue|0
   end
  end
 )
 (func $~lib/array/Array<~lib/array/Array<u8>>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  i32.const 16
  i32.const 49
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  i32.const 32
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.const 32
  memory.fill
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 32
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
 )
 (func $~lib/array/Array<u8>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 16
  i32.const 48
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 2608
   i32.const 3472
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  local.get $0
  local.get $0
  i32.const 8
  i32.le_u
  select
  local.tee $2
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $3
  i32.const 0
  local.get $2
  memory.fill
  local.get $1
  local.get $3
  i32.store
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $1
 )
 (func $~lib/metashrew-as/assembly/indexer/index/arrayBufferToArray (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/array/Array<u8>#constructor
  local.tee $1
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
 )
 (func $~lib/metashrew-as/assembly/indexer/index/_flush~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  global.get $~lib/metashrew-as/assembly/indexer/index/_updateKeys
  local.get $1
  call $"~lib/map/Map<~lib/string/String,~lib/arraybuffer/ArrayBuffer>#get"
  call $~lib/metashrew-as/assembly/indexer/index/arrayBufferToArray
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Output>#push
  drop
  local.get $0
  global.get $~lib/metashrew-as/assembly/indexer/index/_updates
  local.get $1
  call $"~lib/map/Map<~lib/string/String,~lib/arraybuffer/ArrayBuffer>#get"
  call $~lib/metashrew-as/assembly/indexer/index/arrayBufferToArray
  call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Output>#push
  drop
  local.get $0
 )
 (func $~lib/array/Array<u8>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  i32.const 0
  i32.const 1
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $2
  i32.add
  local.get $1
  i32.store8
  local.get $0
  local.get $3
  i32.store offset=12
 )
 (func $~lib/metashrew-as/assembly/proto/metashrew/__proto.Encoder#varint64 (param $0 i32) (param $1 i64)
  loop $while-continue|0
   local.get $1
   i64.const 127
   i64.gt_u
   if
    local.get $0
    i32.load
    local.get $1
    i64.const 127
    i64.and
    i64.const 128
    i64.or
    i32.wrap_i64
    call $~lib/array/Array<u8>#push
    local.get $1
    i64.const 7
    i64.shr_u
    local.set $1
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  i32.wrap_i64
  call $~lib/array/Array<u8>#push
 )
 (func $~lib/array/Array<u8>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 3344
   i32.const 3472
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $~lib/metashrew-as/assembly/indexer/index/_flush
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/metashrew-as/assembly/indexer/index/_updateKeys
  local.tee $0
  i32.load offset=8
  local.set $3
  local.get $0
  i32.load offset=16
  local.set $5
  i32.const 16
  i32.const 47
  call $~lib/rt/stub/__new
  local.tee $4
  i32.const 0
  i32.store
  local.get $4
  i32.const 0
  i32.store offset=4
  local.get $4
  i32.const 0
  i32.store offset=8
  local.get $4
  i32.const 0
  i32.store offset=12
  local.get $5
  i32.const 268435455
  i32.gt_u
  if
   i32.const 2608
   i32.const 3472
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 8
  local.get $5
  local.get $5
  i32.const 8
  i32.le_u
  select
  i32.const 2
  i32.shl
  local.tee $2
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $0
  i32.const 0
  local.get $2
  memory.fill
  local.get $4
  local.get $0
  i32.store
  local.get $4
  local.get $0
  i32.store offset=4
  local.get $4
  local.get $2
  i32.store offset=8
  local.get $4
  local.get $5
  i32.store offset=12
  loop $for-loop|0
   local.get $5
   local.get $6
   i32.gt_s
   if
    local.get $3
    local.get $6
    i32.const 12
    i32.mul
    i32.add
    local.tee $2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $1
     local.tee $0
     i32.const 1
     i32.add
     local.set $1
     local.get $4
     local.get $0
     local.get $2
     i32.load
     call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/sat/Sat>#__set
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|0
   end
  end
  local.get $4
  local.get $1
  i32.const 2
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $4
  local.get $1
  i32.store offset=12
  call $~lib/array/Array<~lib/array/Array<u8>>#constructor
  local.tee $3
  local.set $1
  local.get $4
  i32.load offset=12
  local.set $2
  loop $for-loop|00
   local.get $7
   local.get $2
   local.get $4
   i32.load offset=12
   local.tee $0
   local.get $0
   local.get $2
   i32.gt_s
   select
   i32.lt_s
   if
    local.get $4
    i32.load offset=4
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $0
    i32.const 4
    global.set $~argumentsLength
    local.get $1
    local.get $0
    local.get $7
    local.get $4
    i32.const 7376
    i32.load
    call_indirect (type $7)
    local.set $1
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|00
   end
  end
  i32.const 4
  i32.const 51
  call $~lib/rt/stub/__new
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 0
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  call $~lib/array/Array<~lib/array/Array<u8>>#constructor
  i32.store
  local.get $0
  local.get $3
  i32.store
  global.get $~lib/metashrew-as/assembly/indexer/index/_updateKeys
  local.tee $1
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store
  local.get $1
  i32.const 3
  i32.store offset=4
  local.get $1
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  i32.store offset=8
  local.get $1
  i32.const 4
  i32.store offset=12
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.store offset=20
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  local.set $1
  i32.const 0
  call $~lib/array/Array<u8>#constructor
  local.set $2
  i32.const 4
  i32.const 52
  call $~lib/rt/stub/__new
  local.tee $4
  i32.const 0
  i32.store
  local.get $4
  local.get $2
  i32.store
  local.get $4
  i32.load
  local.set $3
  local.get $0
  i32.load
  i32.load offset=12
  i32.const 0
  i32.gt_s
  if
   loop $for-loop|01
    local.get $1
    local.get $0
    i32.load
    i32.load offset=12
    i32.lt_s
    if
     local.get $4
     i64.const 10
     call $~lib/metashrew-as/assembly/proto/metashrew/__proto.Encoder#varint64
     local.get $4
     local.get $0
     i32.load
     local.get $1
     call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Input>#__get
     i64.load32_s offset=12
     call $~lib/metashrew-as/assembly/proto/metashrew/__proto.Encoder#varint64
     local.get $0
     i32.load
     local.get $1
     call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Input>#__get
     local.set $2
     i32.const 0
     local.set $7
     loop $for-loop|1
      local.get $7
      local.get $2
      i32.load offset=12
      i32.lt_s
      if
       local.get $4
       i32.load
       local.get $2
       local.get $7
       call $~lib/array/Array<u8>#__get
       call $~lib/array/Array<u8>#push
       local.get $7
       i32.const 1
       i32.add
       local.set $7
       br $for-loop|1
      end
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|01
    end
   end
  end
  local.get $3
  i32.load offset=12
  local.tee $1
  i32.const 4
  call $~lib/rt/stub/__new
  local.tee $0
  local.get $3
  i32.load offset=4
  local.get $1
  memory.copy
  local.get $0
  call $~lib/metashrew-as/assembly/indexer/index/__flush
 )
 (func $assembly/index/_start
  (local $0 i32)
  (local $1 i32)
  call $~lib/metashrew-as/assembly/indexer/index/__host_len
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $0
  call $~lib/metashrew-as/assembly/indexer/index/__load_input
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  local.tee $0
  i32.load
  i32.load
  local.set $1
  local.get $0
  local.get $0
  i32.load
  i32.const 4
  i32.add
  i32.store
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.sub
  i32.store offset=4
  local.get $1
  local.get $0
  call $~lib/metashrew-as/assembly/blockdata/block/Block#constructor
  call $assembly/index/Index.indexBlock
  call $~lib/metashrew-as/assembly/indexer/index/_flush
 )
 (func $~lib/dataview/DataView#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  i32.const 12
  i32.const 55
  call $~lib/rt/stub/__new
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  local.get $1
  local.get $2
  i32.add
  i32.lt_u
  local.get $2
  i32.const 1073741820
  i32.gt_u
  i32.or
  if
   i32.const 2608
   i32.const 7408
   i32.const 25
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $0
  i32.store
  local.get $3
  local.get $0
  local.get $1
  i32.add
  i32.store offset=4
  local.get $3
  local.get $2
  i32.store offset=8
  local.get $3
 )
 (func $~lib/dataview/DataView#constructor@varargs (param $0 i32) (result i32)
  (local $1 i32)
  block $2of2
   block $1of2
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $1of2 $1of2 $2of2 $outOfRange
    end
    unreachable
   end
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   local.set $1
  end
  local.get $0
  i32.const 0
  local.get $1
  call $~lib/dataview/DataView#constructor
 )
 (func $assembly/protobuf/__proto.SafeDecoder#constructor (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 9
  i32.const 56
  call $~lib/rt/stub/__new
  local.tee $1
  i32.eqz
  if
   i32.const 8
   i32.const 57
   call $~lib/rt/stub/__new
   local.set $1
  end
  local.get $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store8 offset=8
  local.get $1
 )
 (func $assembly/protobuf/ordinals.OutPoint#constructor (result i32)
  (local $0 i32)
  i32.const 8
  i32.const 54
  call $~lib/rt/stub/__new
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 0
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<u8>#constructor
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
 )
 (func $~lib/dataview/DataView#getUint8 (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 3344
   i32.const 7408
   i32.const 72
   i32.const 50
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $assembly/protobuf/__proto.Decoder#varint (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  call $~lib/dataview/DataView#getUint8
  i32.const 255
  i32.and
  i64.extend_i32_u
  i64.const 127
  i64.and
  local.set $3
  local.get $0
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 1
  i32.add
  i32.store offset=4
  block $folding-inner0
   local.get $0
   i32.load
   local.get $2
   call $~lib/dataview/DataView#getUint8
   i32.const 255
   i32.and
   i32.const 128
   i32.lt_u
   br_if $folding-inner0
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   call $~lib/dataview/DataView#getUint8
   i32.const 255
   i32.and
   i64.extend_i32_u
   i64.const 127
   i64.and
   i64.const 7
   i64.shl
   local.get $3
   i64.or
   local.set $3
   local.get $0
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $0
   i32.load
   local.get $2
   call $~lib/dataview/DataView#getUint8
   i32.const 255
   i32.and
   i32.const 128
   i32.lt_u
   br_if $folding-inner0
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   call $~lib/dataview/DataView#getUint8
   i32.const 255
   i32.and
   i64.extend_i32_u
   i64.const 127
   i64.and
   i64.const 14
   i64.shl
   local.get $3
   i64.or
   local.set $3
   local.get $0
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $0
   i32.load
   local.get $2
   call $~lib/dataview/DataView#getUint8
   i32.const 255
   i32.and
   i32.const 128
   i32.lt_u
   br_if $folding-inner0
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   call $~lib/dataview/DataView#getUint8
   i32.const 255
   i32.and
   i64.extend_i32_u
   i64.const 127
   i64.and
   i64.const 21
   i64.shl
   local.get $3
   i64.or
   local.set $3
   local.get $0
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $0
   i32.load
   local.get $2
   call $~lib/dataview/DataView#getUint8
   i32.const 255
   i32.and
   i32.const 128
   i32.lt_u
   br_if $folding-inner0
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   call $~lib/dataview/DataView#getUint8
   i32.const 255
   i32.and
   i64.extend_i32_u
   i64.const 127
   i64.and
   i64.const 28
   i64.shl
   local.get $3
   i64.or
   local.set $3
   local.get $0
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $0
   i32.load
   local.get $2
   call $~lib/dataview/DataView#getUint8
   i32.const 255
   i32.and
   i32.const 128
   i32.lt_u
   br_if $folding-inner0
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   call $~lib/dataview/DataView#getUint8
   i32.const 255
   i32.and
   i64.extend_i32_u
   i64.const 127
   i64.and
   i64.const 35
   i64.shl
   local.get $3
   i64.or
   local.set $3
   local.get $0
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $0
   i32.load
   local.get $2
   call $~lib/dataview/DataView#getUint8
   i32.const 255
   i32.and
   i32.const 128
   i32.lt_u
   br_if $folding-inner0
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   call $~lib/dataview/DataView#getUint8
   i32.const 255
   i32.and
   i64.extend_i32_u
   i64.const 127
   i64.and
   i64.const 42
   i64.shl
   local.get $3
   i64.or
   local.set $3
   local.get $0
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $0
   i32.load
   local.get $2
   call $~lib/dataview/DataView#getUint8
   i32.const 255
   i32.and
   i32.const 128
   i32.lt_u
   br_if $folding-inner0
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   call $~lib/dataview/DataView#getUint8
   i32.const 255
   i32.and
   i64.extend_i32_u
   i64.const 127
   i64.and
   i64.const 49
   i64.shl
   local.get $3
   i64.or
   local.set $3
   local.get $0
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $0
   i32.load
   local.get $2
   call $~lib/dataview/DataView#getUint8
   i32.const 255
   i32.and
   i32.const 128
   i32.lt_u
   br_if $folding-inner0
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   call $~lib/dataview/DataView#getUint8
   i32.const 255
   i32.and
   i64.extend_i32_u
   i64.const 127
   i64.and
   i64.const 28
   i64.shl
   local.get $3
   i64.or
   local.set $3
   local.get $0
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $0
   i32.load
   local.get $2
   call $~lib/dataview/DataView#getUint8
   i32.const 255
   i32.and
   i32.const 128
   i32.lt_u
   br_if $folding-inner0
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   call $~lib/dataview/DataView#getUint8
   i32.const 255
   i32.and
   i64.extend_i32_u
   i64.const 127
   i64.and
   i64.const 35
   i64.shl
   local.get $3
   i64.or
   local.set $3
   local.get $0
   local.get $0
   i32.load offset=4
   local.tee $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $0
   i32.load
   local.get $2
   call $~lib/dataview/DataView#getUint8
   i32.const 255
   i32.and
   i32.const 128
   i32.lt_u
   br_if $folding-inner0
   local.get $0
   i32.load offset=4
   local.get $0
   i32.load
   i32.load offset=8
   i32.gt_s
   if
    i32.const 7604
    local.get $0
    i32.load offset=4
    local.tee $0
    if (result i32)
     i32.const 0
     local.get $0
     i32.sub
     local.get $0
     local.get $0
     i32.const 31
     i32.shr_u
     i32.const 1
     i32.shl
     local.tee $0
     select
     local.tee $2
     i32.const 100000
     i32.lt_u
     if (result i32)
      local.get $2
      i32.const 100
      i32.lt_u
      if (result i32)
       local.get $2
       i32.const 10
       i32.ge_u
       i32.const 1
       i32.add
      else
       local.get $2
       i32.const 10000
       i32.ge_u
       i32.const 3
       i32.add
       local.get $2
       i32.const 1000
       i32.ge_u
       i32.add
      end
     else
      local.get $2
      i32.const 10000000
      i32.lt_u
      if (result i32)
       local.get $2
       i32.const 1000000
       i32.ge_u
       i32.const 6
       i32.add
      else
       local.get $2
       i32.const 1000000000
       i32.ge_u
       i32.const 8
       i32.add
       local.get $2
       i32.const 100000000
       i32.ge_u
       i32.add
      end
     end
     local.tee $6
     i32.const 1
     i32.shl
     local.get $0
     i32.add
     i32.const 2
     call $~lib/rt/stub/__new
     local.tee $7
     local.get $0
     i32.add
     local.get $2
     local.get $6
     call $~lib/util/number/utoa32_dec_lut
     local.get $0
     if
      local.get $7
      i32.const 45
      i32.store16
     end
     local.get $7
    else
     i32.const 5424
    end
    i32.store
    i32.const 0
    local.set $0
    i32.const 7040
    local.set $2
    block $__inlined_func$~lib/util/string/joinStringArray$746
     i32.const 7596
     i32.load
     i32.const 2
     i32.shr_u
     local.tee $6
     i32.const 1
     i32.sub
     local.tee $7
     i32.const 0
     i32.lt_s
     br_if $__inlined_func$~lib/util/string/joinStringArray$746
     local.get $7
     i32.eqz
     if
      i32.const 7600
      i32.load
      local.tee $2
      i32.eqz
      if
       i32.const 7040
       local.set $2
      end
      br $__inlined_func$~lib/util/string/joinStringArray$746
     end
     loop $for-loop|0
      local.get $4
      local.get $6
      i32.lt_s
      if
       local.get $4
       i32.const 2
       i32.shl
       i32.const 7600
       i32.add
       i32.load
       local.tee $2
       if
        local.get $0
        local.get $2
        i32.const 20
        i32.sub
        i32.load offset=16
        i32.const 1
        i32.shr_u
        i32.add
        local.set $0
       end
       local.get $4
       i32.const 1
       i32.add
       local.set $4
       br $for-loop|0
      end
     end
     local.get $0
     i32.const 7036
     i32.load
     i32.const 1
     i32.shr_u
     local.tee $0
     local.get $7
     i32.mul
     i32.add
     i32.const 1
     i32.shl
     i32.const 2
     call $~lib/rt/stub/__new
     local.set $2
     loop $for-loop|1
      local.get $5
      local.get $7
      i32.lt_s
      if
       local.get $5
       i32.const 2
       i32.shl
       i32.const 7600
       i32.add
       i32.load
       local.tee $4
       if
        local.get $2
        local.get $1
        i32.const 1
        i32.shl
        i32.add
        local.get $4
        local.get $4
        i32.const 20
        i32.sub
        i32.load offset=16
        i32.const 1
        i32.shr_u
        local.tee $4
        i32.const 1
        i32.shl
        memory.copy
        local.get $1
        local.get $4
        i32.add
        local.set $1
       end
       local.get $0
       if
        local.get $2
        local.get $1
        i32.const 1
        i32.shl
        i32.add
        i32.const 7040
        local.get $0
        i32.const 1
        i32.shl
        memory.copy
        local.get $0
        local.get $1
        i32.add
        local.set $1
       end
       local.get $5
       i32.const 1
       i32.add
       local.set $5
       br $for-loop|1
      end
     end
     local.get $7
     i32.const 2
     i32.shl
     i32.const 7600
     i32.add
     i32.load
     local.tee $0
     if
      local.get $2
      local.get $1
      i32.const 1
      i32.shl
      i32.add
      local.get $0
      local.get $0
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const -2
      i32.and
      memory.copy
     end
    end
    local.get $2
    i32.const 7632
    i32.const 278
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $3
 )
 (func $assembly/protobuf/__proto.SafeDecoder#varint (param $0 i32) (result i64)
  (local $1 i64)
  (local $2 i32)
  block $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1259 (result i32)
   i32.const 1
   local.get $0
   i32.load8_u offset=8
   br_if $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1259
   drop
   local.get $0
   i32.load offset=4
   i32.const 4096
   i32.gt_s
   if
    local.get $0
    i32.const 1
    i32.store8 offset=8
    i32.const 1
    br $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1259
   end
   i32.const 0
  end
  if
   i64.const 0
   return
  end
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  call $~lib/dataview/DataView#getUint8
  i32.const 255
  i32.and
  i64.extend_i32_u
  i64.const 127
  i64.and
  local.set $1
  local.get $0
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 1
  i32.add
  i32.store offset=4
  block $folding-inner1
   local.get $0
   i32.load
   local.get $2
   call $~lib/dataview/DataView#getUint8
   i32.const 255
   i32.and
   i32.const 128
   i32.lt_u
   br_if $folding-inner1
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   call $~lib/dataview/DataView#getUint8
   i32.const 255
   i32.and
   i64.extend_i32_u
   i64.const 127
   i64.and
   i64.const 7
   i64.shl
   local.get $1
   i64.or
   local.set $1
   block $folding-inner0
    local.get $0
    i32.load offset=4
    i32.const 1
    i32.add
    i32.const 4096
    i32.gt_s
    br_if $folding-inner0
    local.get $0
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.const 1
    i32.add
    i32.store offset=4
    local.get $0
    i32.load
    local.get $2
    call $~lib/dataview/DataView#getUint8
    i32.const 255
    i32.and
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    call $~lib/dataview/DataView#getUint8
    i32.const 255
    i32.and
    i64.extend_i32_u
    i64.const 127
    i64.and
    i64.const 14
    i64.shl
    local.get $1
    i64.or
    local.set $1
    local.get $0
    i32.load offset=4
    i32.const 1
    i32.add
    i32.const 4096
    i32.gt_s
    br_if $folding-inner0
    local.get $0
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.const 1
    i32.add
    i32.store offset=4
    local.get $0
    i32.load
    local.get $2
    call $~lib/dataview/DataView#getUint8
    i32.const 255
    i32.and
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    call $~lib/dataview/DataView#getUint8
    i32.const 255
    i32.and
    i64.extend_i32_u
    i64.const 127
    i64.and
    i64.const 21
    i64.shl
    local.get $1
    i64.or
    local.set $1
    local.get $0
    i32.load offset=4
    i32.const 1
    i32.add
    i32.const 4096
    i32.gt_s
    br_if $folding-inner0
    local.get $0
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.const 1
    i32.add
    i32.store offset=4
    local.get $0
    i32.load
    local.get $2
    call $~lib/dataview/DataView#getUint8
    i32.const 255
    i32.and
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    call $~lib/dataview/DataView#getUint8
    i32.const 255
    i32.and
    i64.extend_i32_u
    i64.const 127
    i64.and
    i64.const 28
    i64.shl
    local.get $1
    i64.or
    local.set $1
    local.get $0
    i32.load offset=4
    i32.const 1
    i32.add
    i32.const 4096
    i32.gt_s
    br_if $folding-inner0
    local.get $0
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.const 1
    i32.add
    i32.store offset=4
    local.get $0
    i32.load
    local.get $2
    call $~lib/dataview/DataView#getUint8
    i32.const 255
    i32.and
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    call $~lib/dataview/DataView#getUint8
    i32.const 255
    i32.and
    i64.extend_i32_u
    i64.const 127
    i64.and
    i64.const 35
    i64.shl
    local.get $1
    i64.or
    local.set $1
    local.get $0
    i32.load offset=4
    i32.const 1
    i32.add
    i32.const 4096
    i32.gt_s
    br_if $folding-inner0
    local.get $0
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.const 1
    i32.add
    i32.store offset=4
    local.get $0
    i32.load
    local.get $2
    call $~lib/dataview/DataView#getUint8
    i32.const 255
    i32.and
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    call $~lib/dataview/DataView#getUint8
    i32.const 255
    i32.and
    i64.extend_i32_u
    i64.const 127
    i64.and
    i64.const 42
    i64.shl
    local.get $1
    i64.or
    local.set $1
    local.get $0
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.const 1
    i32.add
    i32.store offset=4
    local.get $0
    i32.load
    local.get $2
    call $~lib/dataview/DataView#getUint8
    i32.const 255
    i32.and
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    call $~lib/dataview/DataView#getUint8
    i32.const 255
    i32.and
    i64.extend_i32_u
    i64.const 127
    i64.and
    i64.const 49
    i64.shl
    local.get $1
    i64.or
    local.set $1
    local.get $0
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.const 1
    i32.add
    i32.store offset=4
    local.get $0
    i32.load
    local.get $2
    call $~lib/dataview/DataView#getUint8
    i32.const 255
    i32.and
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    call $~lib/dataview/DataView#getUint8
    i32.const 255
    i32.and
    i64.extend_i32_u
    i64.const 127
    i64.and
    i64.const 28
    i64.shl
    local.get $1
    i64.or
    local.set $1
    local.get $0
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.const 1
    i32.add
    i32.store offset=4
    local.get $0
    i32.load
    local.get $2
    call $~lib/dataview/DataView#getUint8
    i32.const 255
    i32.and
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    call $~lib/dataview/DataView#getUint8
    i32.const 255
    i32.and
    i64.extend_i32_u
    i64.const 127
    i64.and
    i64.const 35
    i64.shl
    local.get $1
    i64.or
    local.set $1
    local.get $0
    i32.load offset=4
    i32.const 1
    i32.add
    i32.const 4096
    i32.gt_s
    br_if $folding-inner0
    local.get $0
    local.get $0
    i32.load offset=4
    local.tee $2
    i32.const 1
    i32.add
    i32.store offset=4
    local.get $0
    i32.load
    local.get $2
    call $~lib/dataview/DataView#getUint8
    i32.const 255
    i32.and
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    local.get $0
    i32.load offset=4
    local.get $0
    i32.load
    i32.load offset=8
    i32.gt_s
    if (result i32)
     i32.const 1
    else
     local.get $0
     i32.load offset=4
     i32.const 4096
     i32.gt_s
    end
    br_if $folding-inner0
    local.get $1
    return
   end
   local.get $0
   i32.const 1
   i32.store8 offset=8
   i64.const 0
   return
  end
  local.get $1
 )
 (func $assembly/protobuf/__proto.SafeDecoder#skipType (param $0 i32) (param $1 i32)
  block $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1261 (result i32)
   i32.const 1
   local.get $0
   i32.load8_u offset=8
   br_if $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1261
   drop
   local.get $0
   i32.load offset=4
   i32.const 4096
   i32.gt_s
   if
    local.get $0
    i32.const 1
    i32.store8 offset=8
    i32.const 1
    br $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1261
   end
   i32.const 0
  end
  if
   return
  end
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        block $case0|0
         local.get $1
         br_table $case0|0 $case1|0 $case2|0 $case3|0 $case5|0 $case4|0 $case5|0
        end
        local.get $0
        call $assembly/protobuf/__proto.SafeDecoder#varint
        drop
        br $break|0
       end
       block $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1260 (result i32)
        i32.const 1
        local.get $0
        i32.load8_u offset=8
        br_if $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1260
        drop
        local.get $0
        i32.load offset=4
        i32.const 4096
        i32.gt_s
        if
         local.get $0
         i32.const 1
         i32.store8 offset=8
         i32.const 1
         br $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1260
        end
        i32.const 0
       end
       i32.eqz
       if
        local.get $0
        i32.load
        i32.load offset=8
        local.get $0
        i32.load offset=4
        i32.const 8
        i32.add
        i32.lt_s
        if (result i32)
         i32.const 1
        else
         local.get $0
         i32.load offset=4
         i32.const 8
         i32.add
         i32.const 4096
         i32.gt_s
        end
        if
         local.get $0
         i32.const 1
         i32.store8 offset=8
        end
        local.get $0
        local.get $0
        i32.load offset=4
        i32.const 8
        i32.add
        i32.store offset=4
       end
       br $break|0
      end
      local.get $0
      call $assembly/protobuf/__proto.Decoder#varint@override
      i32.wrap_i64
      local.set $1
      block $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$12600 (result i32)
       i32.const 1
       local.get $0
       i32.load8_u offset=8
       br_if $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$12600
       drop
       local.get $0
       i32.load offset=4
       i32.const 4096
       i32.gt_s
       if
        local.get $0
        i32.const 1
        i32.store8 offset=8
        i32.const 1
        br $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$12600
       end
       i32.const 0
      end
      i32.eqz
      if
       local.get $0
       i32.load
       i32.load offset=8
       local.get $1
       local.get $0
       i32.load offset=4
       i32.add
       i32.lt_s
       if (result i32)
        i32.const 1
       else
        local.get $1
        local.get $0
        i32.load offset=4
        i32.add
        i32.const 4096
        i32.gt_s
       end
       if
        local.get $0
        i32.const 1
        i32.store8 offset=8
       end
       local.get $0
       local.get $1
       local.get $0
       i32.load offset=4
       i32.add
       i32.store offset=4
      end
      br $break|0
     end
     loop $while-continue|1
      local.get $0
      call $assembly/protobuf/__proto.Decoder#varint@override
      i32.wrap_i64
      i32.const 7
      i32.and
      local.tee $1
      i32.const 4
      i32.ne
      if
       local.get $0
       local.get $1
       call $assembly/protobuf/__proto.SafeDecoder#skipType
       br $while-continue|1
      end
     end
     br $break|0
    end
    block $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$12601 (result i32)
     i32.const 1
     local.get $0
     i32.load8_u offset=8
     br_if $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$12601
     drop
     local.get $0
     i32.load offset=4
     i32.const 4096
     i32.gt_s
     if
      local.get $0
      i32.const 1
      i32.store8 offset=8
      i32.const 1
      br $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$12601
     end
     i32.const 0
    end
    i32.eqz
    if
     local.get $0
     i32.load
     i32.load offset=8
     local.get $0
     i32.load offset=4
     i32.const 4
     i32.add
     i32.lt_s
     if (result i32)
      i32.const 1
     else
      local.get $0
      i32.load offset=4
      i32.const 4
      i32.add
      i32.const 4096
      i32.gt_s
     end
     if
      local.get $0
      i32.const 1
      i32.store8 offset=8
     end
     local.get $0
     local.get $0
     i32.load offset=4
     i32.const 4
     i32.add
     i32.store offset=4
    end
    br $break|0
   end
   local.get $0
   i32.const 1
   i32.store8 offset=8
  end
 )
 (func $assembly/protobuf/ordinals.SatRangesRequest.decodeDataView (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $assembly/protobuf/__proto.SafeDecoder#constructor
  local.set $1
  i32.const 4
  i32.const 53
  call $~lib/rt/stub/__new
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 0
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  call $assembly/protobuf/ordinals.OutPoint#constructor
  i32.store
  loop $while-continue|0
   block $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1250 (result i32)
    i32.const 1
    local.get $1
    i32.load8_u offset=8
    br_if $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1250
    drop
    local.get $1
    i32.load offset=4
    i32.const 4096
    i32.gt_s
    if
     local.get $1
     i32.const 1
     i32.store8 offset=8
     i32.const 1
     br $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1250
    end
    i32.const 0
   end
   if (result i32)
    i32.const 1
   else
    local.get $1
    i32.load offset=4
    local.get $1
    i32.load
    i32.load offset=8
    i32.ge_s
   end
   i32.eqz
   if
    local.get $1
    call $assembly/protobuf/__proto.Decoder#varint@override
    i32.wrap_i64
    local.tee $2
    i32.const 3
    i32.shr_u
    i32.const 1
    i32.eq
    if
     local.get $1
     call $assembly/protobuf/__proto.Decoder#varint@override
     i32.wrap_i64
     local.set $3
     local.get $0
     block $__inlined_func$assembly/protobuf/ordinals.OutPoint.decodeDataView$1349 (result i32)
      local.get $1
      i32.load
      local.tee $2
      i32.load
      local.tee $4
      local.get $1
      i32.load offset=4
      local.get $2
      i32.load offset=4
      local.get $4
      i32.sub
      i32.add
      local.get $3
      call $~lib/dataview/DataView#constructor
      call $assembly/protobuf/__proto.SafeDecoder#constructor
      local.set $5
      call $assembly/protobuf/ordinals.OutPoint#constructor
      local.set $6
      loop $while-continue|01
       block $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$12500 (result i32)
        i32.const 1
        local.get $5
        i32.load8_u offset=8
        br_if $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$12500
        drop
        local.get $5
        i32.load offset=4
        i32.const 4096
        i32.gt_s
        if
         local.get $5
         i32.const 1
         i32.store8 offset=8
         i32.const 1
         br $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$12500
        end
        i32.const 0
       end
       if (result i32)
        i32.const 1
       else
        local.get $5
        i32.load offset=4
        local.get $5
        i32.load
        i32.load offset=8
        i32.ge_s
       end
       i32.eqz
       if
        block $case2|1
         block $case1|13
          local.get $5
          call $assembly/protobuf/__proto.Decoder#varint@override
          i32.wrap_i64
          local.tee $2
          i32.const 3
          i32.shr_u
          local.tee $4
          i32.const 1
          i32.ne
          if
           local.get $4
           i32.const 2
           i32.eq
           br_if $case1|13
           br $case2|1
          end
          local.get $6
          block $__inlined_func$assembly/protobuf/__proto.SafeDecoder#bytes$63 (result i32)
           i32.const 0
           local.set $2
           block $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1257 (result i32)
            i32.const 1
            local.get $5
            i32.load8_u offset=8
            br_if $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1257
            drop
            local.get $5
            i32.load offset=4
            i32.const 4096
            i32.gt_s
            if
             local.get $5
             i32.const 1
             i32.store8 offset=8
             i32.const 1
             br $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1257
            end
            i32.const 0
           end
           if
            i32.const 0
            call $~lib/array/Array<u8>#constructor
            br $__inlined_func$assembly/protobuf/__proto.SafeDecoder#bytes$63
           end
           local.get $5
           call $assembly/protobuf/__proto.Decoder#varint@override
           i32.wrap_i64
           local.set $4
           local.get $5
           i32.load
           i32.load offset=8
           local.get $4
           local.get $5
           i32.load offset=4
           i32.add
           i32.lt_s
           if (result i32)
            i32.const 1
           else
            local.get $4
            local.get $5
            i32.load offset=4
            i32.add
            i32.const 4096
            i32.gt_s
           end
           if
            local.get $5
            i32.const 1
            i32.store8 offset=8
            i32.const 0
            call $~lib/array/Array<u8>#constructor
            br $__inlined_func$assembly/protobuf/__proto.SafeDecoder#bytes$63
           end
           local.get $4
           call $~lib/array/Array<u8>#constructor
           local.set $8
           loop $for-loop|0
            local.get $2
            local.get $4
            i32.lt_u
            if
             local.get $5
             local.get $5
             i32.load offset=4
             local.tee $7
             i32.const 1
             i32.add
             i32.store offset=4
             local.get $5
             i32.load
             local.get $7
             call $~lib/dataview/DataView#getUint8
             local.set $9
             local.get $2
             local.get $8
             i32.load offset=12
             i32.ge_u
             if
              local.get $2
              i32.const 0
              i32.lt_s
              if
               i32.const 3344
               i32.const 3472
               i32.const 130
               i32.const 22
               call $~lib/builtins/abort
               unreachable
              end
              local.get $8
              local.get $2
              i32.const 1
              i32.add
              local.tee $7
              i32.const 0
              i32.const 1
              call $~lib/array/ensureCapacity
              local.get $8
              local.get $7
              i32.store offset=12
             end
             local.get $2
             local.get $8
             i32.load offset=4
             i32.add
             local.get $9
             i32.store8
             local.get $2
             i32.const 1
             i32.add
             local.set $2
             br $for-loop|0
            end
           end
           local.get $8
          end
          i32.store
          br $while-continue|01
         end
         local.get $6
         local.get $5
         call $assembly/protobuf/__proto.Decoder#varint@override
         i64.store32 offset=4
         br $while-continue|01
        end
        local.get $5
        local.get $2
        i32.const 7
        i32.and
        call $assembly/protobuf/__proto.SafeDecoder#skipType
        br $while-continue|01
       end
      end
      i32.const 0
      block $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1263 (result i32)
       i32.const 1
       local.get $5
       i32.load8_u offset=8
       br_if $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1263
       drop
       local.get $5
       i32.load offset=4
       i32.const 4096
       i32.gt_s
       if
        local.get $5
        i32.const 1
        i32.store8 offset=8
        i32.const 1
        br $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1263
       end
       i32.const 0
      end
      br_if $__inlined_func$assembly/protobuf/ordinals.OutPoint.decodeDataView$1349
      drop
      local.get $6
     end
     i32.store
     block $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1260 (result i32)
      i32.const 1
      local.get $1
      i32.load8_u offset=8
      br_if $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1260
      drop
      local.get $1
      i32.load offset=4
      i32.const 4096
      i32.gt_s
      if
       local.get $1
       i32.const 1
       i32.store8 offset=8
       i32.const 1
       br $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1260
      end
      i32.const 0
     end
     i32.eqz
     if
      local.get $1
      i32.load
      i32.load offset=8
      local.get $3
      local.get $1
      i32.load offset=4
      i32.add
      i32.lt_s
      if (result i32)
       i32.const 1
      else
       local.get $3
       local.get $1
       i32.load offset=4
       i32.add
       i32.const 4096
       i32.gt_s
      end
      if
       local.get $1
       i32.const 1
       i32.store8 offset=8
      end
      local.get $1
      local.get $3
      local.get $1
      i32.load offset=4
      i32.add
      i32.store offset=4
     end
     br $while-continue|0
    end
    local.get $1
    local.get $2
    i32.const 7
    i32.and
    call $assembly/protobuf/__proto.SafeDecoder#skipType
    br $while-continue|0
   end
  end
  block $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1266 (result i32)
   i32.const 1
   local.get $1
   i32.load8_u offset=8
   br_if $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1266
   drop
   local.get $1
   i32.load offset=4
   i32.const 4096
   i32.gt_s
   if
    local.get $1
    i32.const 1
    i32.store8 offset=8
    i32.const 1
    br $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1266
   end
   i32.const 0
  end
  if
   i32.const 0
   return
  end
  local.get $0
 )
 (func $assembly/protobuf/ordinals.SatRanges#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 4
  i32.const 60
  call $~lib/rt/stub/__new
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 0
   call $~lib/rt/stub/__new
   local.set $0
  end
  i32.const 16
  i32.const 62
  call $~lib/rt/stub/__new
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  i32.const 32
  i32.const 1
  call $~lib/rt/stub/__new
  local.tee $2
  i32.const 0
  i32.const 32
  memory.fill
  local.get $1
  local.get $2
  i32.store
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  i32.const 32
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store
  local.get $0
 )
 (func $assembly/index/outpointToSatRanges~anonymous|0 (param $0 i64) (param $1 i32) (param $2 i32) (result i64)
  global.get $assembly/tables/SAT_TO_OUTPOINT
  local.get $0
  global.get $assembly/tables/STARTING_SAT
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#getValue<u64>
  call $assembly/index/rangeLength<u64>
 )
 (func $assembly/protobuf/ordinals.SatRange#constructor (result i32)
  (local $0 i32)
  i32.const 16
  i32.const 61
  call $~lib/rt/stub/__new
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 0
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
 )
 (func $assembly/index/outpointToSatRanges (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $assembly/tables/OUTPOINT_TO_SAT
  local.set $4
  local.get $0
  i32.load
  local.tee $0
  i32.load offset=4
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $5
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  memory.copy
  local.get $4
  local.get $5
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#getListValues<u64>
  local.set $5
  call $assembly/protobuf/ordinals.SatRanges#constructor
  local.set $0
  local.get $5
  i32.load offset=12
  local.tee $4
  i32.const 3
  i32.const 38
  call $~lib/rt/__newArray
  local.tee $6
  i32.load offset=4
  local.set $7
  loop $for-loop|0
   local.get $1
   local.get $4
   local.get $5
   i32.load offset=12
   local.tee $8
   local.get $4
   local.get $8
   i32.lt_s
   select
   i32.lt_s
   if
    local.get $1
    i32.const 3
    i32.shl
    local.tee $8
    local.get $5
    i32.load offset=4
    i32.add
    i64.load
    local.set $3
    i32.const 3
    global.set $~argumentsLength
    local.get $7
    local.get $8
    i32.add
    local.get $3
    local.get $1
    local.get $5
    i32.const 7696
    i32.load
    call_indirect (type $14)
    i64.store
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  loop $for-loop|00
   local.get $2
   local.get $5
   i32.load offset=12
   i32.lt_s
   if
    call $assembly/protobuf/ordinals.SatRange#constructor
    local.tee $1
    local.get $5
    local.get $2
    call $~lib/array/Array<u64>#__get
    i64.store
    local.get $1
    local.get $6
    local.get $2
    call $~lib/array/Array<u64>#__get
    i64.store offset=8
    local.get $0
    i32.load
    local.get $1
    call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Output>#push
    drop
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|00
   end
  end
  local.get $0
 )
 (func $assembly/protobuf/ordinals.SatRange#size (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i32)
  local.get $0
  i64.load
  i64.eqz
  if (result i32)
   i32.const 0
  else
   local.get $0
   i64.load
   local.tee $1
   i64.const 128
   i64.lt_u
   if (result i32)
    i32.const 1
   else
    local.get $1
    i64.const 16384
    i64.lt_u
    if (result i32)
     i32.const 2
    else
     local.get $1
     i64.const 2097152
     i64.lt_u
     if (result i32)
      i32.const 3
     else
      local.get $1
      i64.const 268435456
      i64.lt_u
      if (result i32)
       i32.const 4
      else
       local.get $1
       i64.const 34359738368
       i64.lt_u
       if (result i32)
        i32.const 5
       else
        local.get $1
        i64.const 4398046511104
        i64.lt_u
        if (result i32)
         i32.const 6
        else
         local.get $1
         i64.const 562949953421312
         i64.lt_u
         if (result i32)
          i32.const 7
         else
          local.get $1
          i64.const 72057594037927936
          i64.lt_u
          if (result i32)
           i32.const 8
          else
           i32.const 9
           i32.const 10
           local.get $1
           i64.const -9223372036854775808
           i64.lt_u
           select
          end
         end
        end
       end
      end
     end
    end
   end
   i32.const 1
   i32.add
  end
  local.set $2
  local.get $0
  i64.load offset=8
  i64.eqz
  if (result i32)
   i32.const 0
  else
   local.get $0
   i64.load offset=8
   local.tee $1
   i64.const 128
   i64.lt_u
   if (result i32)
    i32.const 1
   else
    local.get $1
    i64.const 16384
    i64.lt_u
    if (result i32)
     i32.const 2
    else
     local.get $1
     i64.const 2097152
     i64.lt_u
     if (result i32)
      i32.const 3
     else
      local.get $1
      i64.const 268435456
      i64.lt_u
      if (result i32)
       i32.const 4
      else
       local.get $1
       i64.const 34359738368
       i64.lt_u
       if (result i32)
        i32.const 5
       else
        local.get $1
        i64.const 4398046511104
        i64.lt_u
        if (result i32)
         i32.const 6
        else
         local.get $1
         i64.const 562949953421312
         i64.lt_u
         if (result i32)
          i32.const 7
         else
          local.get $1
          i64.const 72057594037927936
          i64.lt_u
          if (result i32)
           i32.const 8
          else
           i32.const 9
           i32.const 10
           local.get $1
           i64.const -9223372036854775808
           i64.lt_u
           select
          end
         end
        end
       end
      end
     end
    end
   end
   i32.const 1
   i32.add
  end
  local.get $2
  i32.add
 )
 (func $assembly/protobuf/ordinals.SatRanges#size (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.load
   local.tee $4
   i32.load offset=12
   i32.lt_s
   if
    local.get $4
    local.get $2
    call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Input>#__get
    call $assembly/protobuf/ordinals.SatRange#size
    local.tee $4
    if
     local.get $1
     local.get $4
     i64.extend_i32_u
     local.tee $3
     i64.const 128
     i64.lt_u
     if (result i32)
      i32.const 1
     else
      local.get $3
      i64.const 16384
      i64.lt_u
      if (result i32)
       i32.const 2
      else
       local.get $3
       i64.const 2097152
       i64.lt_u
       if (result i32)
        i32.const 3
       else
        i32.const 4
        i32.const 5
        local.get $3
        i64.const 268435456
        i64.lt_u
        select
       end
      end
     end
     i32.const 1
     i32.add
     local.get $4
     i32.add
     i32.add
     local.set $1
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
 )
 (func $assembly/protobuf/ordinals.SatRange#encodeU8Array (param $0 i32) (param $1 i32)
  local.get $1
  i32.load
  drop
  local.get $0
  i64.load
  i64.const 0
  i64.ne
  if
   local.get $1
   i64.const 8
   call $~lib/metashrew-as/assembly/proto/metashrew/__proto.Encoder#varint64
   local.get $1
   local.get $0
   i64.load
   call $~lib/metashrew-as/assembly/proto/metashrew/__proto.Encoder#varint64
  end
  local.get $0
  i64.load offset=8
  i64.const 0
  i64.ne
  if
   local.get $1
   i64.const 16
   call $~lib/metashrew-as/assembly/proto/metashrew/__proto.Encoder#varint64
   local.get $1
   local.get $0
   i64.load offset=8
   call $~lib/metashrew-as/assembly/proto/metashrew/__proto.Encoder#varint64
  end
 )
 (func $assembly/protobuf/ordinals.SatRanges#encodeU8Array (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.load
  drop
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.load
   local.tee $3
   i32.load offset=12
   i32.lt_s
   if
    local.get $3
    local.get $2
    call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Input>#__get
    call $assembly/protobuf/ordinals.SatRange#size
    local.tee $3
    if
     local.get $1
     i64.const 10
     call $~lib/metashrew-as/assembly/proto/metashrew/__proto.Encoder#varint64
     local.get $1
     local.get $3
     i64.extend_i32_u
     call $~lib/metashrew-as/assembly/proto/metashrew/__proto.Encoder#varint64
     local.get $0
     i32.load
     local.get $2
     call $~lib/array/Array<~lib/metashrew-as/assembly/blockdata/transaction/Input>#__get
     local.get $1
     call $assembly/protobuf/ordinals.SatRange#encodeU8Array
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $assembly/index/satranges (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  call $~lib/metashrew-as/assembly/indexer/index/__host_len
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $0
  call $~lib/metashrew-as/assembly/indexer/index/__load_input
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  local.tee $0
  i32.load
  local.tee $1
  i32.load
  drop
  local.get $0
  local.get $1
  i32.const 4
  i32.add
  i32.store
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.sub
  i32.store offset=4
  local.get $0
  i32.load offset=4
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  memory.copy
  i32.const 1
  global.set $~argumentsLength
  local.get $1
  call $~lib/dataview/DataView#constructor@varargs
  call $assembly/protobuf/ordinals.SatRangesRequest.decodeDataView
  i32.load
  local.tee $0
  i32.load
  i32.load
  local.get $0
  i32.load offset=4
  call $~lib/metashrew-as/assembly/blockdata/transaction/OutPoint.from
  local.set $1
  i32.const 4
  i32.const 59
  call $~lib/rt/stub/__new
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 0
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  call $assembly/protobuf/ordinals.SatRanges#constructor
  i32.store
  local.get $0
  local.get $1
  call $assembly/index/outpointToSatRanges
  i32.store
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $~lib/array/Array<u8>#constructor
  local.set $1
  i32.const 4
  i32.const 64
  call $~lib/rt/stub/__new
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  local.get $1
  i32.store
  local.get $2
  i32.load
  local.set $1
  local.get $0
  i32.load
  local.tee $0
  if
   local.get $0
   call $assembly/protobuf/ordinals.SatRanges#size
   local.tee $3
   if
    local.get $2
    i64.const 10
    call $~lib/metashrew-as/assembly/proto/metashrew/__proto.Encoder#varint64
    local.get $2
    local.get $3
    i64.extend_i32_u
    call $~lib/metashrew-as/assembly/proto/metashrew/__proto.Encoder#varint64
    local.get $0
    local.get $2
    call $assembly/protobuf/ordinals.SatRanges#encodeU8Array
   end
  end
  local.get $1
  i32.load offset=12
  local.tee $0
  i32.const 4
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $1
  i32.load offset=4
  local.get $0
  memory.copy
  local.get $2
 )
 (func $assembly/protobuf/ordinals.SatResponse#encode (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $~lib/array/Array<u8>#constructor
  local.set $3
  i32.const 4
  i32.const 64
  call $~lib/rt/stub/__new
  local.tee $5
  i32.const 0
  i32.store
  local.get $5
  local.get $3
  i32.store
  local.get $5
  i32.load
  local.set $3
  local.get $0
  i64.load
  i64.const 0
  i64.ne
  if
   local.get $5
   i64.const 8
   call $~lib/metashrew-as/assembly/proto/metashrew/__proto.Encoder#varint64
   local.get $5
   local.get $0
   i64.load
   call $~lib/metashrew-as/assembly/proto/metashrew/__proto.Encoder#varint64
  end
  local.get $0
  i32.load offset=8
  local.tee $4
  if
   local.get $4
   call $assembly/protobuf/ordinals.SatRange#size
   local.tee $6
   if
    local.get $5
    i64.const 18
    call $~lib/metashrew-as/assembly/proto/metashrew/__proto.Encoder#varint64
    local.get $5
    local.get $6
    i64.extend_i32_u
    call $~lib/metashrew-as/assembly/proto/metashrew/__proto.Encoder#varint64
    local.get $4
    local.get $5
    call $assembly/protobuf/ordinals.SatRange#encodeU8Array
   end
  end
  local.get $0
  i32.load offset=12
  local.tee $6
  if
   local.get $6
   i32.load
   local.tee $7
   i32.load offset=12
   local.tee $4
   i32.const 0
   i32.gt_s
   if (result i32)
    local.get $4
    local.get $7
    i64.load32_s offset=12
    local.tee $1
    i64.const 128
    i64.lt_u
    if (result i32)
     i32.const 1
    else
     local.get $1
     i64.const 16384
     i64.lt_u
     if (result i32)
      i32.const 2
     else
      local.get $1
      i64.const 2097152
      i64.lt_u
      if (result i32)
       i32.const 3
      else
       local.get $1
       i64.const 268435456
       i64.lt_u
       if (result i32)
        i32.const 4
       else
        local.get $1
        i64.const 34359738368
        i64.lt_u
        if (result i32)
         i32.const 5
        else
         local.get $1
         i64.const 4398046511104
         i64.lt_u
         if (result i32)
          i32.const 6
         else
          local.get $1
          i64.const 562949953421312
          i64.lt_u
          if (result i32)
           i32.const 7
          else
           local.get $1
           i64.const 72057594037927936
           i64.lt_u
           if (result i32)
            i32.const 8
           else
            i32.const 9
            i32.const 10
            local.get $1
            i64.const -9223372036854775808
            i64.lt_u
            select
           end
          end
         end
        end
       end
      end
     end
    end
    i32.const 1
    i32.add
    i32.add
   else
    i32.const 0
   end
   local.get $6
   i32.load offset=4
   if (result i32)
    local.get $6
    i64.load32_u offset=4
    local.tee $1
    i64.const 128
    i64.lt_u
    if (result i32)
     i32.const 1
    else
     local.get $1
     i64.const 16384
     i64.lt_u
     if (result i32)
      i32.const 2
     else
      local.get $1
      i64.const 2097152
      i64.lt_u
      if (result i32)
       i32.const 3
      else
       i32.const 4
       i32.const 5
       local.get $1
       i64.const 268435456
       i64.lt_u
       select
      end
     end
    end
    i32.const 1
    i32.add
   else
    i32.const 0
   end
   i32.add
   local.tee $4
   if
    local.get $5
    i64.const 26
    call $~lib/metashrew-as/assembly/proto/metashrew/__proto.Encoder#varint64
    local.get $5
    local.get $4
    i64.extend_i32_u
    call $~lib/metashrew-as/assembly/proto/metashrew/__proto.Encoder#varint64
    local.get $5
    i32.load
    drop
    local.get $6
    i32.load
    i32.load offset=12
    i32.const 0
    i32.gt_s
    if
     local.get $5
     i64.const 10
     call $~lib/metashrew-as/assembly/proto/metashrew/__proto.Encoder#varint64
     local.get $5
     local.get $6
     i32.load
     i64.load32_s offset=12
     call $~lib/metashrew-as/assembly/proto/metashrew/__proto.Encoder#varint64
     local.get $6
     i32.load
     local.set $4
     loop $for-loop|0
      local.get $2
      local.get $4
      i32.load offset=12
      i32.lt_s
      if
       local.get $5
       i32.load
       local.get $4
       local.get $2
       call $~lib/array/Array<u8>#__get
       call $~lib/array/Array<u8>#push
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $for-loop|0
      end
     end
    end
    local.get $6
    i32.load offset=4
    if
     local.get $5
     i64.const 16
     call $~lib/metashrew-as/assembly/proto/metashrew/__proto.Encoder#varint64
     local.get $5
     local.get $6
     i64.load32_u offset=4
     call $~lib/metashrew-as/assembly/proto/metashrew/__proto.Encoder#varint64
    end
   end
  end
  local.get $0
  i32.load offset=16
  local.tee $0
  if
   local.get $0
   call $assembly/protobuf/ordinals.SatRanges#size
   local.tee $2
   if
    local.get $5
    i64.const 34
    call $~lib/metashrew-as/assembly/proto/metashrew/__proto.Encoder#varint64
    local.get $5
    local.get $2
    i64.extend_i32_u
    call $~lib/metashrew-as/assembly/proto/metashrew/__proto.Encoder#varint64
    local.get $0
    local.get $5
    call $assembly/protobuf/ordinals.SatRanges#encodeU8Array
   end
  end
  local.get $3
  i32.load offset=12
  local.tee $0
  i32.const 4
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $3
  i32.load offset=4
  local.get $0
  memory.copy
  local.get $2
 )
 (func $assembly/index/sat (result i32)
  (local $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  call $~lib/metashrew-as/assembly/indexer/index/__host_len
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $0
  call $~lib/metashrew-as/assembly/indexer/index/__load_input
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  local.tee $0
  i32.load
  local.tee $2
  i32.load
  drop
  local.get $0
  local.get $2
  i32.const 4
  i32.add
  i32.store
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.sub
  i32.store offset=4
  block $__inlined_func$assembly/protobuf/ordinals.SatRequest.decodeDataView$1357 (result i32)
   local.get $0
   i32.load offset=4
   call $~lib/arraybuffer/ArrayBuffer#constructor
   local.tee $2
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   memory.copy
   i32.const 1
   global.set $~argumentsLength
   local.get $2
   call $~lib/dataview/DataView#constructor@varargs
   call $assembly/protobuf/__proto.SafeDecoder#constructor
   local.set $2
   i32.const 8
   i32.const 65
   call $~lib/rt/stub/__new
   local.tee $0
   i32.eqz
   if
    i32.const 0
    i32.const 0
    call $~lib/rt/stub/__new
    local.set $0
   end
   local.get $0
   i64.const 0
   i64.store
   loop $while-continue|0
    block $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1250 (result i32)
     i32.const 1
     local.get $2
     i32.load8_u offset=8
     br_if $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1250
     drop
     local.get $2
     i32.load offset=4
     i32.const 4096
     i32.gt_s
     if
      local.get $2
      i32.const 1
      i32.store8 offset=8
      i32.const 1
      br $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1250
     end
     i32.const 0
    end
    if (result i32)
     i32.const 1
    else
     local.get $2
     i32.load offset=4
     local.get $2
     i32.load
     i32.load offset=8
     i32.ge_s
    end
    i32.eqz
    if
     local.get $2
     call $assembly/protobuf/__proto.Decoder#varint@override
     i32.wrap_i64
     local.tee $3
     i32.const 3
     i32.shr_u
     i32.const 1
     i32.eq
     if
      local.get $0
      local.get $2
      call $assembly/protobuf/__proto.Decoder#varint@override
      i64.store
      br $while-continue|0
     end
     local.get $2
     local.get $3
     i32.const 7
     i32.and
     call $assembly/protobuf/__proto.SafeDecoder#skipType
     br $while-continue|0
    end
   end
   i32.const 0
   block $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1282 (result i32)
    i32.const 1
    local.get $2
    i32.load8_u offset=8
    br_if $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1282
    drop
    local.get $2
    i32.load offset=4
    i32.const 4096
    i32.gt_s
    if
     local.get $2
     i32.const 1
     i32.store8 offset=8
     i32.const 1
     br $__inlined_func$assembly/protobuf/__proto.SafeDecoder#invalid$1282
    end
    i32.const 0
   end
   br_if $__inlined_func$assembly/protobuf/ordinals.SatRequest.decodeDataView$1357
   drop
   local.get $0
  end
  local.set $2
  i32.const 20
  i32.const 66
  call $~lib/rt/stub/__new
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 0
   call $~lib/rt/stub/__new
   local.set $0
  end
  local.get $0
  i64.const 0
  i64.store
  local.get $0
  call $assembly/protobuf/ordinals.SatRange#constructor
  i32.store offset=8
  local.get $0
  call $assembly/protobuf/ordinals.OutPoint#constructor
  i32.store offset=12
  local.get $0
  call $assembly/protobuf/ordinals.SatRanges#constructor
  i32.store offset=16
  global.get $assembly/tables/SAT_TO_OUTPOINT
  local.get $2
  i64.load
  i64.const 1
  i64.add
  call $~lib/metashrew-as/assembly/indexer/bst/BST<u64>#seekLower
  local.set $1
  local.get $0
  local.get $2
  i64.load
  local.get $1
  i64.sub
  i64.store
  global.get $assembly/tables/SAT_TO_OUTPOINT
  local.get $1
  call $~lib/metashrew-as/assembly/indexer/bst/BST<u64>#get
  local.tee $2
  local.get $2
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  call $~lib/metashrew-as/assembly/blockdata/transaction/OutPoint#constructor
  local.set $2
  local.get $0
  i32.load offset=12
  local.set $4
  local.get $2
  i32.load offset=4
  local.tee $3
  i32.load offset=4
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $5
  local.get $3
  i32.load
  local.get $3
  i32.load offset=4
  memory.copy
  local.get $4
  local.get $5
  call $~lib/metashrew-as/assembly/indexer/index/arrayBufferToArray
  i32.store
  local.get $0
  i32.load offset=12
  local.get $2
  i32.load offset=8
  i32.store offset=4
  local.get $0
  i32.load offset=8
  local.get $1
  i64.store
  local.get $0
  i32.load offset=8
  global.get $assembly/tables/SAT_TO_OUTPOINT
  local.get $0
  i64.load
  call $~lib/metashrew-as/assembly/indexer/bst/BST<u64>#seekGreater
  i64.store offset=8
  local.get $0
  local.get $2
  call $assembly/index/outpointToSatRanges
  i32.store offset=16
  local.get $0
  call $assembly/protobuf/ordinals.SatResponse#encode
 )
 (func $assembly/index/inscription (result i32)
  (local $0 i32)
  call $~lib/metashrew-as/assembly/indexer/index/__host_len
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $0
  call $~lib/metashrew-as/assembly/indexer/index/__load_input
  local.get $0
 )
 (func $assembly/index/content (result i32)
  (local $0 i32)
  (local $1 i32)
  call $~lib/metashrew-as/assembly/indexer/index/__host_len
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $0
  call $~lib/metashrew-as/assembly/indexer/index/__load_input
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  local.tee $0
  i32.load
  i32.load
  local.set $1
  local.get $0
  local.get $0
  i32.load
  i32.const 4
  i32.add
  i32.store
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.sub
  i32.store offset=4
  global.get $assembly/tables/SEQUENCE_NUMBER_TO_INSCRIPTION_ID
  local.get $1
  i64.extend_i32_u
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#selectValue<u64>
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#get
  local.set $0
  global.get $assembly/tables/INSCRIPTION_ID_TO_INSCRIPTION
  local.get $0
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#select
  call $~lib/metashrew-as/assembly/indexer/tables/IndexPointer#get
 )
 (func $assembly/index/inscriptionsforblock (result i32)
  (local $0 i32)
  call $~lib/metashrew-as/assembly/indexer/index/__host_len
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $0
  call $~lib/metashrew-as/assembly/indexer/index/__load_input
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  local.tee $0
  i32.load
  i32.load
  drop
  local.get $0
  local.get $0
  i32.load
  i32.const 4
  i32.add
  i32.store
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 4
  i32.sub
  i32.store offset=4
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
 )
 (func $assembly/index/output (result i32)
  (local $0 i32)
  (local $1 i32)
  call $~lib/metashrew-as/assembly/indexer/index/__host_len
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $0
  call $~lib/metashrew-as/assembly/indexer/index/__load_input
  local.get $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  local.tee $1
  i32.const 32
  call $~lib/metashrew-as/assembly/utils/utils/parseBytes
  drop
  local.get $1
  i32.load
  local.tee $0
  i32.load
  drop
  local.get $1
  local.get $0
  i32.const 4
  i32.add
  i32.store
  local.get $1
  local.get $1
  i32.load offset=4
  i32.const 4
  i32.sub
  i32.store offset=4
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
 )
 (func $assembly/index/test_arrayBufferCopy
  (local $0 i32)
  (local $1 i32)
  i32.const 4
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $0
  i32.const 1430532898
  i32.store
  i32.const 4
  call $~lib/array/Array<u8>#constructor
  local.tee $1
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
 )
 (func $assembly/index/test_nullTx
  (local $0 i32)
  i32.const 0
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  call $~lib/metashrew-as/assembly/blockdata/transaction/Transaction#constructor
  call $~lib/metashrew-as/assembly/blockdata/transaction/Transaction#txid
  local.tee $0
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  call $~lib/metashrew-as/assembly/utils/box/Box#constructor
  call $~lib/metashrew-as/assembly/utils/box/Box#toHexString
  local.set $0
  i32.const 2
  global.set $~argumentsLength
  local.get $0
  i32.const 1
  call $~lib/string/String.UTF8.encode@varargs
  call $~lib/metashrew-as/assembly/utils/logging/__log
 )
 (func $assembly/protobuf/__proto.Decoder#varint@override (param $0 i32) (result i64)
  local.get $0
  i32.const 8
  i32.sub
  i32.load
  i32.const 56
  i32.eq
  if
   local.get $0
   call $assembly/protobuf/__proto.SafeDecoder#varint
   return
  end
  local.get $0
  call $assembly/protobuf/__proto.Decoder#varint
 )
 (func $~start
  call $start:assembly/index
 )
)

export declare class MetashrewOrd {
    baseUrl: string;
    blockTag: string;
    programHash: string;
    constructor({ baseUrl, programHash, blockTag }: any);
    _call({ method, input }: {
        method: any;
        input: any;
    }): Promise<string>;
    satranges({ outpoint }: any): Promise<any>;
}

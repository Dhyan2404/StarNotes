package org.apache.xerces.util;

/* loaded from: classes13.dex */
public final class ShadowedSymbolTable extends SymbolTable {
    protected SymbolTable fSymbolTable;

    public ShadowedSymbolTable(SymbolTable symbolTable) {
        this.fSymbolTable = symbolTable;
    }

    @Override // org.apache.xerces.util.SymbolTable
    public String addSymbol(String str) {
        return this.fSymbolTable.containsSymbol(str) ? this.fSymbolTable.addSymbol(str) : super.addSymbol(str);
    }

    @Override // org.apache.xerces.util.SymbolTable
    public int hash(String str) {
        return this.fSymbolTable.hash(str);
    }

    @Override // org.apache.xerces.util.SymbolTable
    public String addSymbol(char[] cArr, int i, int i2) {
        return this.fSymbolTable.containsSymbol(cArr, i, i2) ? this.fSymbolTable.addSymbol(cArr, i, i2) : super.addSymbol(cArr, i, i2);
    }

    @Override // org.apache.xerces.util.SymbolTable
    public int hash(char[] cArr, int i, int i2) {
        return this.fSymbolTable.hash(cArr, i, i2);
    }
}

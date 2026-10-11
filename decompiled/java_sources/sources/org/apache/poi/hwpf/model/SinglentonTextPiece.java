package org.apache.poi.hwpf.model;

import org.apache.poi.util.Internal;
import org.apache.poi.util.StringUtil;

@Internal
/* loaded from: classes12.dex */
public class SinglentonTextPiece extends TextPiece {
    public SinglentonTextPiece(SinglentonTextPiece singlentonTextPiece) {
        super(singlentonTextPiece);
    }

    @Override // org.apache.poi.hwpf.model.TextPiece
    public int bytesLength() {
        return getStringBuilder().length() * 2;
    }

    @Override // org.apache.poi.hwpf.model.TextPiece
    public int characterLength() {
        return getStringBuilder().length();
    }

    @Override // org.apache.poi.hwpf.model.TextPiece
    public int getCP() {
        return 0;
    }

    @Override // org.apache.poi.hwpf.model.PropertyNode
    public int getEnd() {
        return characterLength();
    }

    @Override // org.apache.poi.hwpf.model.PropertyNode
    public int getStart() {
        return 0;
    }

    @Override // org.apache.poi.hwpf.model.TextPiece
    public String toString() {
        return "SinglentonTextPiece (" + characterLength() + " chars)";
    }

    public SinglentonTextPiece(StringBuilder sb) {
        super(0, sb.length(), StringUtil.getToUnicodeLE(sb.toString()), new PieceDescriptor(new byte[8], 0));
    }

    @Override // org.apache.poi.hwpf.model.TextPiece, org.apache.poi.hwpf.model.PropertyNode, org.apache.poi.common.Duplicatable
    public SinglentonTextPiece copy() {
        return new SinglentonTextPiece(this);
    }
}

package java.awt.font;

/* loaded from: classes5.dex */
class TextJustifier {
    static boolean DEBUG = false;
    public static final int MAX_PRIORITY = 3;
    private GlyphJustificationInfo[] info;
    private int limit;
    private int start;

    public TextJustifier(GlyphJustificationInfo[] glyphJustificationInfoArr, int i, int i2) {
        this.info = glyphJustificationInfoArr;
        this.start = i;
        this.limit = i2;
        if (DEBUG) {
            System.out.println("start: " + i + ", limit: " + i2);
            while (i < i2) {
                GlyphJustificationInfo glyphJustificationInfo = glyphJustificationInfoArr[i];
                System.out.println("w: " + glyphJustificationInfo.weight + ", gp: " + glyphJustificationInfo.growPriority + ", gll: " + glyphJustificationInfo.growLeftLimit + ", grl: " + glyphJustificationInfo.growRightLimit);
                i++;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0064, code lost:
    
        if (r7.growAbsorb != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006e, code lost:
    
        r15 = r15 + r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006c, code lost:
    
        if (r7.shrinkAbsorb != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00a5, code lost:
    
        if ((r1 < 0.0f) == (r1 < r13)) goto L65;
     */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0180 A[EDGE_INSN: B:114:0x0180->B:115:0x0180 BREAK  A[LOOP:2: B:82:0x0128->B:110:0x017b], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x012c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public float[] justify(float r19) {
        /*
            Method dump skipped, instructions count: 486
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: java.awt.font.TextJustifier.justify(float):float[]");
    }
}

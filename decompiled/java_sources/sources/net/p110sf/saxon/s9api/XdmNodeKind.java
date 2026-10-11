package net.p110sf.saxon.s9api;

/* loaded from: classes11.dex */
public enum XdmNodeKind {
    DOCUMENT(9),
    ELEMENT(1),
    ATTRIBUTE(2),
    TEXT(3),
    COMMENT(8),
    PROCESSING_INSTRUCTION(7),
    NAMESPACE(13);

    private final int number;

    XdmNodeKind(int i) {
        this.number = i;
    }

    public static XdmNodeKind forType(int i) {
        if (i == 1) {
            return ELEMENT;
        }
        if (i == 2) {
            return ATTRIBUTE;
        }
        if (i == 3) {
            return TEXT;
        }
        if (i == 7) {
            return PROCESSING_INSTRUCTION;
        }
        if (i == 8) {
            return COMMENT;
        }
        if (i == 9) {
            return DOCUMENT;
        }
        if (i == 13) {
            return NAMESPACE;
        }
        throw new IllegalArgumentException();
    }

    public int getNumber() {
        return this.number;
    }
}

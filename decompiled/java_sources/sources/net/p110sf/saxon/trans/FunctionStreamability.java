package net.p110sf.saxon.trans;

/* loaded from: classes11.dex */
public enum FunctionStreamability {
    UNCLASSIFIED("unclassified"),
    ABSORBING("absorbing"),
    INSPECTION("inspection"),
    FILTER("filter"),
    SHALLOW_DESCENT("shallow-descent"),
    DEEP_DESCENT("deep-descent"),
    ASCENT("ascent");

    public String streamabilityStr;

    FunctionStreamability(String str) {
        this.streamabilityStr = str;
    }

    /* renamed from: of */
    public static FunctionStreamability m64107of(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1645614887:
                if (str.equals("deep-descent")) {
                    c = 0;
                    break;
                }
                break;
            case -1408684838:
                if (str.equals("ascent")) {
                    c = 1;
                    break;
                }
                break;
            case -1274492040:
                if (str.equals("filter")) {
                    c = 2;
                    break;
                }
                break;
            case 96830977:
                if (str.equals("shallow-descent")) {
                    c = 3;
                    break;
                }
                break;
            case 1751846260:
                if (str.equals("inspection")) {
                    c = 4;
                    break;
                }
                break;
            case 1840151916:
                if (str.equals("unclassified")) {
                    c = 5;
                    break;
                }
                break;
            case 2037146517:
                if (str.equals("absorbing")) {
                    c = 6;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return DEEP_DESCENT;
            case 1:
                return ASCENT;
            case 2:
                return FILTER;
            case 3:
                return SHALLOW_DESCENT;
            case 4:
                return INSPECTION;
            case 5:
                return UNCLASSIFIED;
            case 6:
                return ABSORBING;
            default:
                throw new IllegalArgumentException();
        }
    }

    public boolean isConsuming() {
        return this == ABSORBING || this == SHALLOW_DESCENT || this == DEEP_DESCENT;
    }

    public boolean isStreaming() {
        return this != UNCLASSIFIED;
    }
}

package net.p110sf.saxon.trans;

import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.instruct.Instruction;
import net.p110sf.saxon.expr.parser.ExpressionTool;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.BMPString;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class Err {
    public static final int ATTRIBUTE = 2;
    public static final int ELEMENT = 1;
    public static final int EQNAME = 8;
    public static final int FUNCTION = 3;
    public static final int GENERAL = 6;
    public static final int URI = 7;
    public static final int VALUE = 4;
    public static final int VARIABLE = 5;

    /* renamed from: net.sf.saxon.trans.Err$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18528a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f102283a;

        static {
            int[] iArr = new int[Genre.values().length];
            f102283a = iArr;
            try {
                iArr[Genre.ANY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f102283a[Genre.ATOMIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f102283a[Genre.NODE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f102283a[Genre.FUNCTION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f102283a[Genre.MAP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f102283a[Genre.ARRAY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f102283a[Genre.EXTERNAL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static String abbreviateEQName(String str) {
        try {
            if (str.startsWith("{")) {
                str = "Q" + str;
            }
            StructuredQName fromEQName = StructuredQName.fromEQName(str);
            return "Q{" + abbreviateURI(fromEQName.getURI()) + "}" + fromEQName.getLocalPart();
        } catch (Exception unused) {
            return str;
        }
    }

    public static String abbreviateURI(String str) {
        if (str == null) {
            return "";
        }
        int lastIndexOf = (str.endsWith("/") ? str.substring(0, str.length() - 1) : str).lastIndexOf(47);
        if (lastIndexOf >= 0) {
            return RemoveAudioAction.f58149k + str.substring(lastIndexOf);
        }
        if (str.length() <= 15) {
            return str;
        }
        return RemoveAudioAction.f58149k + str.substring(str.length() - 15);
    }

    public static String depict(Item item) {
        if (!(item instanceof NodeInfo)) {
            return item.toShortString();
        }
        NodeInfo nodeInfo = (NodeInfo) item;
        int nodeKind = nodeInfo.getNodeKind();
        if (nodeKind == 1) {
            return '<' + nodeInfo.getDisplayName() + '>';
        }
        if (nodeKind == 2) {
            return '@' + nodeInfo.getDisplayName() + "=\"" + nodeInfo.getUnicodeStringValue() + '\"';
        }
        if (nodeKind == 3) {
            return "text{" + truncate30(nodeInfo.getUnicodeStringValue()) + "}";
        }
        if (nodeKind == 7) {
            return "<?" + nodeInfo.getLocalPart() + "...?>";
        }
        if (nodeKind == 8) {
            return "<!--...-->";
        }
        if (nodeKind == 9) {
            return "doc(" + abbreviateURI(nodeInfo.getSystemId()) + ')';
        }
        if (nodeKind != 13) {
            return "";
        }
        return "xmlns:" + nodeInfo.getLocalPart() + "=" + abbreviateURI(nodeInfo.getStringValue());
    }

    public static CharSequence depictSequence(Sequence sequence) {
        if (sequence == null) {
            return "(*null*)";
        }
        try {
            GroundedValue materialize = sequence.materialize();
            return materialize.getLength() == 0 ? "()" : materialize.getLength() == 1 ? depict(sequence.head()) : depictSequenceStart(materialize.iterate(), 3, materialize.getLength());
        } catch (Exception unused) {
            return "(*unreadable*)";
        }
    }

    public static String depictSequenceStart(SequenceIterator sequenceIterator, int i, int i2) {
        StringBuilder sb = new StringBuilder(64);
        sb.append(" (");
        int i3 = 0;
        while (true) {
            Item next = sequenceIterator.next();
            if (next == null) {
                sb.append(") ");
                return sb.toString();
            }
            int i4 = i3 + 1;
            if (i3 > 0) {
                sb.append(", ");
            }
            if (i4 > i) {
                sb.append("... [" + i2 + "])");
                return sb.toString();
            }
            sb.append(depict(next));
            i3 = i4;
        }
    }

    public static String describeGenre(Genre genre) {
        switch (C18528a.f102283a[genre.ordinal()]) {
            case 1:
                return "any item";
            case 2:
                return "an atomic value";
            case 3:
                return "a node";
            case 4:
                return "a function";
            case 5:
                return "a map";
            case 6:
                return "an array";
            default:
                return "an external object";
        }
    }

    public static String describeVisibility(Visibility visibility) {
        return visibility.toString().toLowerCase();
    }

    public static String show(Location location) {
        return abbreviateURI(location.getSystemId()) + "#" + location.getLineNumber();
    }

    public static UnicodeString truncate30(UnicodeString unicodeString) {
        return unicodeString.length() <= 30 ? Whitespace.collapseWhitespace(unicodeString) : Whitespace.collapseWhitespace(unicodeString.substring(0L, 30L)).concat(BMPString.m63877of(RemoveAudioAction.f58149k));
    }

    public static String wrap(UnicodeString unicodeString) {
        return wrap(unicodeString, 6);
    }

    public static String wrap(String str) {
        return wrap(str, 6);
    }

    public static String wrap(String str, int i) {
        return wrap(StringView.m63901of(str), i);
    }

    public static String wrap(UnicodeString unicodeString, int i) {
        String sb;
        if (unicodeString == null) {
            return "(NULL)";
        }
        StringBuilder sb2 = new StringBuilder(64);
        IntIterator codePoints = unicodeString.codePoints();
        int i2 = 0;
        while (codePoints.hasNext()) {
            int next = codePoints.next();
            i2++;
            if (next == 9) {
                sb2.append("\\t");
            } else if (next == 10) {
                sb2.append("\\n");
            } else if (next == 13) {
                sb2.append("\\r");
            } else if (next < 32) {
                sb2.append("\\x");
                sb2.append(Integer.toHexString(next));
            } else {
                sb2.appendCodePoint(next);
            }
        }
        if (i == 1 || i == 2) {
            String sb3 = sb2.toString();
            if (sb3.startsWith("{")) {
                sb3 = "Q" + sb3;
            }
            if (sb3.startsWith("Q{")) {
                try {
                    StructuredQName fromEQName = StructuredQName.fromEQName(sb2.toString());
                    sb = "Q{" + abbreviateURI(fromEQName.getURI()) + "}" + fromEQName.getLocalPart();
                } catch (Exception unused) {
                    sb = sb2.toString();
                }
            } else {
                sb = sb3;
            }
        } else if (i == 7) {
            sb = abbreviateURI(sb2.toString());
        } else if (i == 8) {
            sb = abbreviateEQName(sb2.toString());
        } else if (i2 > 30) {
            sb = sb2.toString().substring(0, 30) + RemoveAudioAction.f58149k;
        } else {
            sb = sb2.toString();
        }
        if (i == 1) {
            return "<" + sb + ">";
        }
        if (i == 2) {
            return "@" + sb;
        }
        if (i == 3) {
            return sb + "()";
        }
        if (i == 4) {
            return "\"" + sb + "\"";
        }
        if (i == 5) {
            return "$" + sb;
        }
        if (i == 8) {
            return sb;
        }
        return "{" + sb + "}";
    }

    public static String wrap(Expression expression) {
        if (ExpressionTool.expressionSize(expression) < 10 && !(expression instanceof Instruction)) {
            return "{" + expression + "}";
        }
        return expression.getExpressionName();
    }
}

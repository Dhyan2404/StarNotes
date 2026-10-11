package net.p110sf.saxon.expr.parser;

import com.google.firebase.installations.local.IidStore;
import com.google.gson.internal.bind.TypeAdapters;
import java.util.Optional;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.om.AxisInfo;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.type.UType;
import net.p110sf.saxon.value.SequenceType;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes11.dex */
public class RoleDiagnostic {
    public static final int AXIS_STEP = 14;
    public static final int BINARY_EXPR = 1;
    public static final int CHARACTER_MAP_EXPANSION = 16;
    public static final int CONTEXT_ITEM = 13;
    public static final int EVALUATE_RESULT = 12;
    public static final int FOR_MEMBER = 17;
    public static final int FUNCTION = 0;
    public static final int FUNCTION_RESULT = 5;
    public static final int INSTRUCTION = 4;
    public static final int MATCH_PATTERN = 19;
    public static final int MISC = 20;
    public static final int OPTION = 15;
    public static final int ORDER_BY = 6;
    public static final int PARAM = 8;
    public static final int TEMPLATE_RESULT = 7;
    public static final int TYPE_OP = 2;
    public static final int UNARY_EXPR = 9;
    public static final int UPDATING_EXPR = 10;
    public static final int VARIABLE = 3;

    /* renamed from: a */
    public final int f99964a;

    /* renamed from: b */
    public final String f99965b;

    /* renamed from: c */
    public final int f99966c;

    /* renamed from: d */
    public String f99967d = "XPTY0004";

    public RoleDiagnostic(int i, String str, int i2) {
        this.f99964a = i;
        this.f99965b = str;
        this.f99966c = i2;
    }

    public static String ordinal(int i) {
        if (i == 1) {
            return "first";
        }
        if (i == 2) {
            return TypeAdapters.C6590r.f36278f;
        }
        if (i == 3) {
            return "third";
        }
        if (i >= 21) {
            int i2 = i % 10;
            if (i2 == 1) {
                return i + "st";
            }
            if (i2 == 2) {
                return i + "nd";
            }
            if (i2 == 3) {
                return i + "rd";
            }
        }
        return i + "th";
    }

    public static RoleDiagnostic reconstruct(String str) {
        int indexOf = str.indexOf(124);
        int parseInt = Integer.parseInt(str.substring(0, indexOf));
        int i = indexOf + 1;
        int indexOf2 = str.indexOf(124, i);
        int parseInt2 = Integer.parseInt(str.substring(i, indexOf2));
        int i2 = indexOf2 + 1;
        int indexOf3 = str.indexOf(124, i2);
        String substring = str.substring(i2, indexOf3);
        RoleDiagnostic roleDiagnostic = new RoleDiagnostic(parseInt, str.substring(indexOf3 + 1), parseInt2);
        if (!substring.isEmpty()) {
            roleDiagnostic.setErrorCode(substring);
        }
        return roleDiagnostic;
    }

    public String composeErrorMessage(ItemType itemType, ItemType itemType2) {
        return composeRequiredMessage(itemType) + "; supplied value has item type " + itemType2;
    }

    public String composeRequiredMessage(ItemType itemType) {
        return "The required item type of the " + getMessage() + " is " + itemType;
    }

    public String getErrorCode() {
        return this.f99967d;
    }

    public String getMessage() {
        String str;
        String str2 = this.f99965b;
        String str3 = "";
        switch (this.f99964a) {
            case 0:
                if (str2.equals("saxon:call") || str2.equals("saxon:apply")) {
                    if (this.f99966c == 0) {
                        return "target of the dynamic function call";
                    }
                    return ordinal(this.f99966c) + " argument of the dynamic function call";
                }
                StringBuilder sb = new StringBuilder();
                sb.append(ordinal(this.f99966c + 1));
                sb.append(" argument of ");
                if (str2.isEmpty()) {
                    str = "the anonymous function";
                } else {
                    str = str2 + "()";
                }
                sb.append(str);
                return sb.toString();
            case 1:
                return ordinal(this.f99966c + 1) + " operand of '" + str2 + Chars.QUOTE;
            case 2:
                return "value in '" + str2 + "' expression";
            case 3:
                if (str2.equals("saxon:context-item")) {
                    return "context item";
                }
                return "value of variable $" + str2;
            case 4:
                int indexOf = str2.indexOf(47);
                if (indexOf >= 0) {
                    str3 = str2.substring(indexOf + 1);
                    str2 = str2.substring(0, indexOf);
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("@");
                sb2.append(str3);
                sb2.append(" attribute of ");
                if (str2.equals("LRE")) {
                    str2 = "a literal result element";
                }
                sb2.append(str2);
                return sb2.toString();
            case 5:
                if (str2.isEmpty()) {
                    return "result of the anonymous function";
                }
                return "result of a call to " + str2;
            case 6:
                return ordinal(this.f99966c + 1) + " sort key";
            case 7:
                return "result of template " + str2;
            case 8:
                return "value of parameter $" + str2;
            case 9:
                return "operand of '-'";
            case 10:
                return "value of the " + ordinal(this.f99966c + 1) + " operand of " + str2 + " expression";
            case 11:
            case 18:
            default:
                return "";
            case 12:
                return "result of the expression {" + str2 + "} evaluated by xsl:evaluate";
            case 13:
                return "context item";
            case 14:
                return "context item for the " + AxisInfo.axisName[this.f99966c] + " axis";
            case 15:
                return "value of the " + str2 + " option";
            case 16:
                return "substitute value for character '" + str2 + "' in the character map";
            case 17:
                return "'for member $" + str2 + "' expression";
            case 19:
                return "match pattern";
            case 20:
                return str2;
        }
    }

    public boolean isTypeError() {
        return (this.f99967d.startsWith("FORG") || this.f99967d.equals("XPDY0050")) ? false : true;
    }

    public String save() {
        StringBuilder sb = new StringBuilder(256);
        sb.append(this.f99964a + IidStore.f35940g);
        sb.append(this.f99966c + IidStore.f35940g);
        sb.append(this.f99967d.equals("XPTY0004") ? "" : this.f99967d);
        sb.append(IidStore.f35940g);
        sb.append(this.f99965b);
        return sb.toString();
    }

    public void setErrorCode(String str) {
        if (str != null) {
            this.f99967d = str;
        }
    }

    public String composeErrorMessage(ItemType itemType, Expression expression, TypeHierarchy typeHierarchy) {
        if (expression instanceof Literal) {
            String composeRequiredMessage = composeRequiredMessage(itemType);
            Optional<String> explainMismatch = SequenceType.makeSequenceType(itemType, 57344).explainMismatch(((Literal) expression).getGroundedValue(), typeHierarchy);
            if (!explainMismatch.isPresent()) {
                return composeRequiredMessage;
            }
            return composeRequiredMessage + ". " + explainMismatch.get();
        }
        return composeRequiredMessage(itemType) + ", but the supplied expression {" + expression.toShortString() + "} has item type " + expression.getItemType();
    }

    public String composeErrorMessage(ItemType itemType, Item item, TypeHierarchy typeHierarchy) {
        StringBuilder sb = new StringBuilder(256);
        sb.append(composeRequiredMessage(itemType));
        sb.append("; the supplied value ");
        sb.append(Err.depict(item));
        if (itemType.getGenre() != item.getGenre()) {
            sb.append(" is ");
            sb.append(Err.describeGenre(item.getGenre()));
        } else {
            sb.append(" does not match. ");
            if (typeHierarchy != null) {
                Optional<String> explainMismatch = itemType.explainMismatch(item, typeHierarchy);
                if (explainMismatch.isPresent()) {
                    sb.append(explainMismatch.get());
                }
            }
        }
        return sb.toString();
    }

    public String composeErrorMessage(ItemType itemType, UType uType) {
        return composeRequiredMessage(itemType) + "; supplied value has item type " + uType;
    }
}

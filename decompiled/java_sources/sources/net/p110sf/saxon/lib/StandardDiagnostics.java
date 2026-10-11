package net.p110sf.saxon.lib;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.expr.Component;
import net.p110sf.saxon.expr.ContextOriginator;
import net.p110sf.saxon.expr.Locatable;
import net.p110sf.saxon.expr.UserFunctionCall;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.FixedAttribute;
import net.p110sf.saxon.expr.instruct.FixedElement;
import net.p110sf.saxon.expr.instruct.GlobalParam;
import net.p110sf.saxon.expr.instruct.GlobalVariable;
import net.p110sf.saxon.expr.instruct.Instruction;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.KeyDefinition;
import net.p110sf.saxon.trans.Mode;
import net.p110sf.saxon.trans.rules.BuiltInRuleSet;
import net.p110sf.saxon.trans.rules.Rule;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.type.ValidationFailure;
import net.p110sf.saxon.value.StringValue;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public class StandardDiagnostics {
    public int MAX_MESSAGE_LENGTH = 2000;
    public int MAX_MESSAGE_LINE_LENGTH = 100;
    public int MIN_MESSAGE_LINE_LENGTH = 10;
    public int TARGET_MESSAGE_LINE_LENGTH = 90;

    public static String abbreviateLocationURIDefault(String str) {
        if (str == null) {
            return "*unknown*";
        }
        int lastIndexOf = str.lastIndexOf(47);
        return (lastIndexOf < 0 || lastIndexOf >= str.length() + (-1)) ? str : str.substring(lastIndexOf + 1);
    }

    public static String getInstructionNameDefault(Instruction instruction) {
        if (instruction instanceof FixedElement) {
            return "element constructor <" + instruction.getObjectName().getDisplayName() + '>';
        }
        if (instruction instanceof FixedAttribute) {
            return "attribute constructor " + instruction.getObjectName().getDisplayName() + "=\"{...}\"";
        }
        int instructionNameCode = instruction.getInstructionNameCode();
        if (instructionNameCode >= 0 && instructionNameCode < 1024 && instructionNameCode != 160 && instructionNameCode != 210) {
            if (instruction.getPackageData().isXSLT()) {
                return StandardNames.getDisplayName(instructionNameCode);
            }
            String displayName = StandardNames.getDisplayName(instructionNameCode);
            int indexOf = displayName.indexOf(58);
            if (indexOf <= 0) {
                return displayName;
            }
            String substring = displayName.substring(indexOf + 1);
            if (substring.equals("document")) {
                return "document node constructor";
            }
            if (!substring.equals("text") && !displayName.equals(Constants.ELEMNAME_VALUEOF_STRING)) {
                return substring.equals("element") ? "computed element constructor" : substring.equals("attribute") ? "computed attribute constructor" : substring.equals(Constants.ELEMNAME_VARIABLE_STRING) ? "variable declaration" : substring.equals(Constants.ELEMNAME_PARAMVARIABLE_STRING) ? "external variable declaration" : substring.equals("comment") ? "comment constructor" : substring.equals(Constants.ELEMNAME_PI_STRING) ? "processing-instruction constructor" : substring.equals(Constants.ATTRNAME_NAMESPACE) ? "namespace node constructor" : displayName;
            }
            return "text node constructor";
        }
        return "";
    }

    public String abbreviateLocationURI(String str) {
        return abbreviateLocationURIDefault(str);
    }

    public String expandSpecialCharacters(String str, int i) {
        if (i >= 1114111) {
            return str;
        }
        StringValue stringValue = new StringValue(str);
        StringBuilder sb = new StringBuilder(stringValue.length32() * 2);
        IntIterator codePoints = stringValue.codePoints();
        while (codePoints.hasNext()) {
            int next = codePoints.next();
            sb.appendCodePoint(next);
            if (next > i) {
                sb.append("[x");
                sb.append(Integer.toHexString(next));
                sb.append(IteratorUtils.f104924b);
            }
        }
        return sb.toString();
    }

    public String formatListOfOffendingNodes(ValidationFailure validationFailure) {
        String str;
        StringBuilder sb = new StringBuilder();
        List<NodeInfo> offendingNodes = validationFailure.getOffendingNodes();
        if (!offendingNodes.isEmpty()) {
            sb.append("\n  Nodes for which the assertion fails:");
            for (NodeInfo nodeInfo : offendingNodes) {
                String displayTypeName = Type.displayTypeName(nodeInfo);
                if (nodeInfo.getNodeKind() == 3) {
                    displayTypeName = displayTypeName + " " + Err.wrap(nodeInfo.getUnicodeStringValue(), 4);
                }
                if (nodeInfo.getLineNumber() != -1) {
                    str = displayTypeName + " on line " + nodeInfo.getLineNumber();
                    if (nodeInfo.getColumnNumber() != -1) {
                        str = str + " column " + nodeInfo.getColumnNumber();
                    }
                    if (nodeInfo.getSystemId() != null) {
                        str = str + " of " + nodeInfo.getSystemId();
                    }
                } else {
                    str = displayTypeName + " at " + Navigator.getPath(nodeInfo);
                }
                sb.append("\n  * ");
                sb.append(str);
            }
        }
        return sb.toString();
    }

    public String getInstructionName(Instruction instruction) {
        return getInstructionNameDefault(instruction);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r15 = r15;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x01c5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0234 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01c2  */
    /* JADX WARN: Type inference failed for: r15v11 */
    /* JADX WARN: Type inference failed for: r15v12 */
    /* JADX WARN: Type inference failed for: r15v2, types: [javax.xml.transform.SourceLocator] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getLocationMessageText(javax.xml.transform.SourceLocator r15) {
        /*
            Method dump skipped, instructions count: 613
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.lib.StandardDiagnostics.getLocationMessageText(javax.xml.transform.SourceLocator):java.lang.String");
    }

    public void logStackTrace(XPathContext xPathContext, Logger logger, int i) {
        if (i <= 0) {
            return;
        }
        int i2 = 20;
        while (true) {
            int i3 = i2 - 1;
            if (i2 <= 0) {
                return;
            }
            Component currentComponent = xPathContext.getCurrentComponent();
            if (currentComponent != null) {
                if (currentComponent.getActor() instanceof Mode) {
                    Rule currentTemplateRule = xPathContext.getCurrentTemplateRule();
                    if (currentTemplateRule != null) {
                        StringBuilder sb = new StringBuilder();
                        Location location = currentTemplateRule.getPattern().getLocation();
                        sb.append("  In template rule with match=\"");
                        sb.append(currentTemplateRule.getPattern().toShortString());
                        sb.append("\" ");
                        if (location != null && location.getLineNumber() != -1) {
                            sb.append("on line ");
                            sb.append(location.getLineNumber());
                            sb.append(" ");
                        }
                        if (location != null && location.getSystemId() != null) {
                            sb.append("of ");
                            sb.append(abbreviateLocationURI(location.getSystemId()));
                        }
                        logger.error(sb.toString());
                    }
                } else {
                    logger.error(getLocationMessageText(currentComponent.getActor()).replace("$at ", "In "));
                }
            }
            try {
                xPathContext.getStackFrame().getStackFrameMap().showStackFrame(xPathContext, logger);
            } catch (Exception unused) {
            }
            while (!(xPathContext instanceof XPathContextMajor)) {
                xPathContext = xPathContext.getCaller();
            }
            ContextOriginator origin = ((XPathContextMajor) xPathContext).getOrigin();
            if (origin == null || (origin instanceof Controller)) {
                return;
            }
            logger.error("     invoked by " + showOriginator(origin));
            xPathContext = xPathContext.getCaller();
            i2 = i3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String showOriginator(ContextOriginator contextOriginator) {
        String str;
        StringBuilder sb = new StringBuilder();
        if (contextOriginator == 0) {
            sb.append("unknown caller (null)");
        } else if (contextOriginator instanceof Instruction) {
            sb.append(getInstructionName((Instruction) contextOriginator));
        } else if (contextOriginator instanceof UserFunctionCall) {
            sb.append("function call");
        } else if (contextOriginator instanceof Controller) {
            sb.append("external application");
        } else if (contextOriginator instanceof BuiltInRuleSet) {
            sb.append("built-in template rule (");
            sb.append(((BuiltInRuleSet) contextOriginator).getName());
            sb.append(MotionUtils.f31762d);
        } else if (contextOriginator instanceof KeyDefinition) {
            sb.append("xsl:key definition");
        } else if (contextOriginator instanceof GlobalParam) {
            sb.append("global parameter ");
            sb.append(((GlobalParam) contextOriginator).getVariableQName().getDisplayName());
        } else if (contextOriginator instanceof GlobalVariable) {
            sb.append(((GlobalVariable) contextOriginator).getDescription());
        } else {
            sb.append("unknown caller (");
            sb.append(contextOriginator.getClass());
            sb.append(MotionUtils.f31762d);
        }
        if (contextOriginator instanceof Locatable) {
            Location location = ((Locatable) contextOriginator).getLocation();
            if (location.getLineNumber() != -1) {
                sb.append(" at ");
                if (location.getSystemId() == null) {
                    str = "line ";
                } else {
                    str = location.getSystemId() + "#";
                }
                sb.append(str);
                sb.append(location.getLineNumber());
            }
        }
        return sb.toString();
    }

    public String wordWrap(String str) {
        int length = str.length();
        int i = this.MAX_MESSAGE_LENGTH;
        if (length > i) {
            str = str.substring(0, i);
        }
        int indexOf = str.indexOf(10);
        if (indexOf < 0) {
            indexOf = str.length();
        }
        if (indexOf <= this.MAX_MESSAGE_LINE_LENGTH) {
            if (indexOf >= str.length()) {
                return str;
            }
            return str.substring(0, indexOf) + '\n' + wordWrap(str.substring(indexOf + 1));
        }
        int i2 = this.TARGET_MESSAGE_LINE_LENGTH;
        while (str.charAt(i2) != ' ' && i2 > 0) {
            i2--;
        }
        if (i2 <= this.MIN_MESSAGE_LINE_LENGTH) {
            return str;
        }
        return str.substring(0, i2) + "\n  " + wordWrap(str.substring(i2 + 1));
    }
}

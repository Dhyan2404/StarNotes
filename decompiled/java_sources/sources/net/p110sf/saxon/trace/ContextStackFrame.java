package net.p110sf.saxon.trace;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.Actor;
import net.p110sf.saxon.expr.instruct.AttributeSet;
import net.p110sf.saxon.expr.instruct.GlobalVariable;
import net.p110sf.saxon.expr.instruct.NamedTemplate;
import net.p110sf.saxon.expr.instruct.TemplateRule;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.KeyDefinition;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public abstract class ContextStackFrame {

    /* renamed from: a */
    public Location f102172a;

    /* renamed from: b */
    public Item f102173b;

    /* renamed from: c */
    public Object f102174c;
    protected XPathContext context;

    /* loaded from: classes11.dex */
    public static class ApplyTemplates extends ContextStackFrame {
        @Override // net.p110sf.saxon.trace.ContextStackFrame
        public void print(Logger logger) {
            logger.error("  at xsl:apply-templates " + showLocation());
            Item contextItem = getContextItem();
            if (contextItem instanceof NodeInfo) {
                logger.error("     processing " + Navigator.getPath((NodeInfo) contextItem));
            }
        }
    }

    /* loaded from: classes11.dex */
    public static class BuiltInTemplateRule extends ContextStackFrame {
        public BuiltInTemplateRule(XPathContext xPathContext) {
            this.context = xPathContext;
        }

        @Override // net.p110sf.saxon.trace.ContextStackFrame
        public void print(Logger logger) {
            String str;
            Item contextItem = this.context.getContextItem();
            if (contextItem instanceof NodeInfo) {
                str = Navigator.getPath((NodeInfo) contextItem);
            } else if (contextItem instanceof AtomicValue) {
                str = "value " + contextItem.toString();
            } else {
                str = contextItem instanceof MapItem ? Constant.MAP_TAG : contextItem instanceof ArrayItem ? "array" : contextItem instanceof Function ? Constants.EXSLT_ELEMNAME_FUNCTION_STRING : "item";
            }
            logger.error("  in built-in template rule for " + str + CloudStorageConstants.OPERATION_IN + this.context.getCurrentMode().getActor().getModeTitle(false));
        }
    }

    /* loaded from: classes11.dex */
    public static class CallTemplate extends ContextStackFrame {

        /* renamed from: d */
        public StructuredQName f102175d;

        public StructuredQName getTemplateName() {
            return this.f102175d;
        }

        @Override // net.p110sf.saxon.trace.ContextStackFrame
        public void print(Logger logger) {
            StructuredQName structuredQName = this.f102175d;
            logger.error("  at xsl:call-template name=\"" + (structuredQName == null ? "??" : structuredQName.getDisplayName()) + "\" " + showLocation());
        }

        public void setTemplateName(StructuredQName structuredQName) {
            this.f102175d = structuredQName;
        }
    }

    /* loaded from: classes11.dex */
    public static class CallingApplication extends ContextStackFrame {
        @Override // net.p110sf.saxon.trace.ContextStackFrame
        public void print(Logger logger) {
        }
    }

    /* loaded from: classes11.dex */
    public static class FunctionCall extends ContextStackFrame {

        /* renamed from: d */
        public StructuredQName f102176d;

        public StructuredQName getFunctionName() {
            return this.f102176d;
        }

        @Override // net.p110sf.saxon.trace.ContextStackFrame
        public void print(Logger logger) {
            StringBuilder sb = new StringBuilder();
            sb.append("  at ");
            StructuredQName structuredQName = this.f102176d;
            sb.append(structuredQName == null ? "(anonymous)" : structuredQName.getDisplayName());
            sb.append("() ");
            sb.append(showLocation());
            logger.error(sb.toString());
        }

        public void setFunctionName(StructuredQName structuredQName) {
            this.f102176d = structuredQName;
        }
    }

    /* loaded from: classes11.dex */
    public static class VariableEvaluation extends ContextStackFrame {

        /* renamed from: d */
        public StructuredQName f102177d;

        public StructuredQName getVariableName() {
            return this.f102177d;
        }

        @Override // net.p110sf.saxon.trace.ContextStackFrame
        public void print(Logger logger) {
            logger.error("  in " + ContextStackFrame.m64074b(getContainer()) + " " + showLocation());
        }

        public void setVariableName(StructuredQName structuredQName) {
            this.f102177d = structuredQName;
        }
    }

    /* renamed from: b */
    public static String m64074b(Object obj) {
        if (obj instanceof Actor) {
            StructuredQName componentName = ((Actor) obj).getComponentName();
            String displayName = componentName == null ? "" : componentName.getDisplayName();
            if (obj instanceof NamedTemplate) {
                return "template name=\"" + displayName + "\"";
            }
            if (obj instanceof UserFunction) {
                return "function " + displayName + "()";
            }
            if (obj instanceof AttributeSet) {
                return "attribute-set " + displayName;
            }
            if (obj instanceof KeyDefinition) {
                return "key " + displayName;
            }
            if (obj instanceof GlobalVariable) {
                StructuredQName variableQName = ((GlobalVariable) obj).getVariableQName();
                if (variableQName.hasURI(NamespaceConstant.SAXON_GENERATED_VARIABLE)) {
                    return "optimizer-created global variable";
                }
                return "global variable $" + variableQName.getDisplayName();
            }
        } else if (obj instanceof TemplateRule) {
            return "template match=\"" + ((TemplateRule) obj).getMatchPattern().toString() + "\"";
        }
        return "";
    }

    public Object getContainer() {
        return this.f102174c;
    }

    public XPathContext getContext() {
        return this.context;
    }

    public Item getContextItem() {
        return this.f102173b;
    }

    public int getLineNumber() {
        return this.f102172a.getLineNumber();
    }

    public String getSystemId() {
        return this.f102172a.getSystemId();
    }

    public abstract void print(Logger logger);

    public void setComponent(Object obj) {
        this.f102174c = obj;
    }

    public void setContext(XPathContext xPathContext) {
        this.context = xPathContext;
    }

    public void setContextItem(Item item) {
        this.f102173b = item;
    }

    public void setLocation(Location location) {
        this.f102172a = location;
    }

    public String showLocation() {
        if (getSystemId() == null) {
            return "";
        }
        int lineNumber = getLineNumber();
        if (lineNumber == -1 || lineNumber == 1048575) {
            return MotionUtils.f31761c + getSystemId() + MotionUtils.f31762d;
        }
        return MotionUtils.f31761c + getSystemId() + "#" + getLineNumber() + MotionUtils.f31762d;
    }
}

package net.p110sf.saxon.s9api;

import java.util.function.Predicate;
import net.p110sf.saxon.event.FilterFactory;
import net.p110sf.saxon.event.ProxyReceiver;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.Stripper;
import net.p110sf.saxon.om.AllElementsSpaceStrippingRule;
import net.p110sf.saxon.om.IgnorableSpaceStrippingRule;
import net.p110sf.saxon.om.NoElementsSpaceStrippingRule;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.SpaceStrippingRule;
import net.p110sf.saxon.s9api.WhitespaceStrippingPolicy;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.type.SchemaType;

/* loaded from: classes11.dex */
public class WhitespaceStrippingPolicy {

    /* renamed from: a */
    public final int f101374a;

    /* renamed from: b */
    public SpaceStrippingRule f101375b;
    public static final WhitespaceStrippingPolicy NONE = new WhitespaceStrippingPolicy(0);
    public static final WhitespaceStrippingPolicy IGNORABLE = new WhitespaceStrippingPolicy(1);
    public static final WhitespaceStrippingPolicy ALL = new WhitespaceStrippingPolicy(2);
    public static final WhitespaceStrippingPolicy UNSPECIFIED = new WhitespaceStrippingPolicy(3);

    /* renamed from: net.sf.saxon.s9api.WhitespaceStrippingPolicy$a */
    /* loaded from: classes11.dex */
    public static class C18477a implements SpaceStrippingRule {

        /* renamed from: a */
        public final /* synthetic */ Predicate f101376a;

        public C18477a(Predicate predicate) {
            this.f101376a = predicate;
        }

        @Override // net.p110sf.saxon.om.SpaceStrippingRule
        public void export(ExpressionPresenter expressionPresenter) {
            throw new UnsupportedOperationException();
        }

        @Override // net.p110sf.saxon.om.SpaceStrippingRule
        public int isSpacePreserving(NodeName nodeName, SchemaType schemaType) {
            return this.f101376a.test(new QName(nodeName.getStructuredQName())) ? 2 : 1;
        }

        @Override // net.p110sf.saxon.om.SpaceStrippingRule
        public ProxyReceiver makeStripper(Receiver receiver) {
            return new Stripper(this, receiver);
        }
    }

    public WhitespaceStrippingPolicy(int i) {
        this.f101374a = i;
        if (i == 0) {
            this.f101375b = NoElementsSpaceStrippingRule.getInstance();
        } else if (i == 1) {
            this.f101375b = IgnorableSpaceStrippingRule.getInstance();
        } else {
            if (i != 2) {
                return;
            }
            this.f101375b = AllElementsSpaceStrippingRule.getInstance();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ Receiver m63665b(Receiver receiver) {
        return new Stripper(this.f101375b, receiver);
    }

    public static WhitespaceStrippingPolicy makeCustomPolicy(Predicate<QName> predicate) {
        C18477a c18477a = new C18477a(predicate);
        WhitespaceStrippingPolicy whitespaceStrippingPolicy = new WhitespaceStrippingPolicy(4);
        whitespaceStrippingPolicy.f101375b = c18477a;
        return whitespaceStrippingPolicy;
    }

    public SpaceStrippingRule getSpaceStrippingRule() {
        return this.f101375b;
    }

    public FilterFactory makeStripper() {
        return new FilterFactory() { // from class: com.sunia.HTREnginev2.f7o
            @Override // net.p110sf.saxon.event.FilterFactory
            public final Receiver makeFilter(Receiver receiver) {
                Receiver m63665b;
                m63665b = WhitespaceStrippingPolicy.this.m63665b(receiver);
                return m63665b;
            }
        };
    }

    public int ordinal() {
        return this.f101374a;
    }

    public WhitespaceStrippingPolicy(StylesheetPackage stylesheetPackage) {
        this.f101374a = 4;
        this.f101375b = stylesheetPackage.getStripperRules();
    }
}

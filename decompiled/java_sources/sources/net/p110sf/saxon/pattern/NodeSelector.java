package net.p110sf.saxon.pattern;

import java.util.function.Predicate;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.UType;

/* loaded from: classes11.dex */
public class NodeSelector extends NodeTest {

    /* renamed from: i */
    public final Predicate<? super NodeInfo> f100918i;

    public NodeSelector(Predicate<? super NodeInfo> predicate) {
        this.f100918i = predicate;
    }

    /* renamed from: of */
    public static NodeSelector m63449of(Predicate<? super NodeInfo> predicate) {
        return new NodeSelector(predicate);
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.type.ItemType
    public double getDefaultPriority() {
        return 0.0d;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public UType getUType() {
        return UType.ANY;
    }

    @Override // net.p110sf.saxon.pattern.NodeTest
    public boolean matches(int i, NodeName nodeName, SchemaType schemaType) {
        throw new UnsupportedOperationException("NodePredicate doesn't support this method");
    }

    @Override // net.p110sf.saxon.pattern.NodeTest, net.p110sf.saxon.pattern.NodePredicate
    public boolean test(NodeInfo nodeInfo) {
        return this.f100918i.test(nodeInfo);
    }
}

package net.p110sf.saxon.om;

import net.p110sf.saxon.event.Builder;
import net.p110sf.saxon.event.PipelineConfiguration;
import net.p110sf.saxon.tree.linked.LinkedTreeBuilder;
import net.p110sf.saxon.tree.tiny.TinyBuilder;
import net.p110sf.saxon.tree.tiny.TinyBuilderCondensed;

/* loaded from: classes11.dex */
public abstract class TreeModel {
    public static final TreeModel LINKED_TREE;
    public static final TreeModel TINY_TREE;
    public static final TreeModel TINY_TREE_CONDENSED;

    /* renamed from: net.sf.saxon.om.TreeModel$b */
    /* loaded from: classes11.dex */
    public static class C18427b extends TreeModel {
        public C18427b() {
        }

        @Override // net.p110sf.saxon.om.TreeModel
        public String getName() {
            return "LinkedTree";
        }

        @Override // net.p110sf.saxon.om.TreeModel
        public int getSymbolicValue() {
            return 0;
        }

        @Override // net.p110sf.saxon.om.TreeModel
        public boolean isSchemaAware() {
            return true;
        }

        @Override // net.p110sf.saxon.om.TreeModel
        public Builder makeBuilder(PipelineConfiguration pipelineConfiguration) {
            return new LinkedTreeBuilder(pipelineConfiguration);
        }
    }

    /* renamed from: net.sf.saxon.om.TreeModel$c */
    /* loaded from: classes11.dex */
    public static class C18428c extends TreeModel {
        public C18428c() {
        }

        @Override // net.p110sf.saxon.om.TreeModel
        public String getName() {
            return "TinyTree";
        }

        @Override // net.p110sf.saxon.om.TreeModel
        public int getSymbolicValue() {
            return 1;
        }

        @Override // net.p110sf.saxon.om.TreeModel
        public boolean isSchemaAware() {
            return true;
        }

        @Override // net.p110sf.saxon.om.TreeModel
        public Builder makeBuilder(PipelineConfiguration pipelineConfiguration) {
            TinyBuilder tinyBuilder = new TinyBuilder(pipelineConfiguration);
            tinyBuilder.setStatistics(pipelineConfiguration.getConfiguration().getTreeStatistics().SOURCE_DOCUMENT_STATISTICS);
            return tinyBuilder;
        }
    }

    /* renamed from: net.sf.saxon.om.TreeModel$d */
    /* loaded from: classes11.dex */
    public static class C18429d extends TreeModel {
        public C18429d() {
        }

        @Override // net.p110sf.saxon.om.TreeModel
        public String getName() {
            return "TinyTreeCondensed";
        }

        @Override // net.p110sf.saxon.om.TreeModel
        public int getSymbolicValue() {
            return 2;
        }

        @Override // net.p110sf.saxon.om.TreeModel
        public boolean isSchemaAware() {
            return true;
        }

        @Override // net.p110sf.saxon.om.TreeModel
        public Builder makeBuilder(PipelineConfiguration pipelineConfiguration) {
            TinyBuilderCondensed tinyBuilderCondensed = new TinyBuilderCondensed(pipelineConfiguration);
            tinyBuilderCondensed.setStatistics(pipelineConfiguration.getConfiguration().getTreeStatistics().SOURCE_DOCUMENT_STATISTICS);
            return tinyBuilderCondensed;
        }
    }

    static {
        TINY_TREE = new C18428c();
        TINY_TREE_CONDENSED = new C18429d();
        LINKED_TREE = new C18427b();
    }

    public static TreeModel getTreeModel(int i) {
        if (i == 0) {
            return LINKED_TREE;
        }
        if (i == 1) {
            return TINY_TREE;
        }
        if (i == 2) {
            return TINY_TREE_CONDENSED;
        }
        throw new IllegalArgumentException("tree model " + i);
    }

    public String getName() {
        return toString();
    }

    public int getSymbolicValue() {
        return -1;
    }

    public boolean isMutable() {
        return false;
    }

    public boolean isSchemaAware() {
        return false;
    }

    public abstract Builder makeBuilder(PipelineConfiguration pipelineConfiguration);
}

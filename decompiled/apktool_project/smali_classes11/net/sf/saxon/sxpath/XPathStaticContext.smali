.class public interface abstract Lnet/sf/saxon/sxpath/XPathStaticContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/StaticContext;


# virtual methods
.method public abstract declareVariable(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/sxpath/XPathVariable;
.end method

.method public abstract declareVariable(Lnet/sf/saxon/value/QNameValue;)Lnet/sf/saxon/sxpath/XPathVariable;
.end method

.method public abstract getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;
.end method

.method public abstract isContextItemParentless()Z
.end method

.method public abstract setDefaultElementNamespace(Ljava/lang/String;)V
.end method

.method public abstract setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)V
.end method

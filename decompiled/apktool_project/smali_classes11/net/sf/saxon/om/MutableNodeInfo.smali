.class public interface abstract Lnet/sf/saxon/om/MutableNodeInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/NodeInfo;


# virtual methods
.method public abstract addAttribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;IZ)V
.end method

.method public addNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract addNamespace(Lnet/sf/saxon/om/NamespaceBinding;Z)V
.end method

.method public abstract delete()V
.end method

.method public abstract insertChildren([Lnet/sf/saxon/om/NodeInfo;ZZ)V
.end method

.method public abstract insertSiblings([Lnet/sf/saxon/om/NodeInfo;ZZ)V
.end method

.method public abstract isDeleted()Z
.end method

.method public abstract newBuilder()Lnet/sf/saxon/event/Builder;
.end method

.method public abstract removeAttribute(Lnet/sf/saxon/om/NodeInfo;)V
.end method

.method public removeNamespace(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract removeTypeAnnotation()V
.end method

.method public abstract rename(Lnet/sf/saxon/om/NodeName;Z)V
.end method

.method public abstract replace([Lnet/sf/saxon/om/NodeInfo;Z)V
.end method

.method public abstract replaceStringValue(Lnet/sf/saxon/str/UnicodeString;)V
.end method

.method public abstract setAttributes(Lnet/sf/saxon/om/AttributeMap;)V
.end method

.method public abstract setTypeAnnotation(Lnet/sf/saxon/type/SchemaType;)V
.end method

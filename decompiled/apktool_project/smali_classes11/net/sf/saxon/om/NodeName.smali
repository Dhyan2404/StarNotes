.class public interface abstract Lnet/sf/saxon/om/NodeName;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/IdentityComparable;


# virtual methods
.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getFingerprint()I
.end method

.method public abstract getLocalPart()Ljava/lang/String;
.end method

.method public abstract getNamespaceBinding()Lnet/sf/saxon/om/NamespaceBinding;
.end method

.method public abstract getPrefix()Ljava/lang/String;
.end method

.method public abstract getStructuredQName()Lnet/sf/saxon/om/StructuredQName;
.end method

.method public abstract getURI()Ljava/lang/String;
.end method

.method public abstract hasFingerprint()Z
.end method

.method public abstract hasURI(Ljava/lang/String;)Z
.end method

.method public abstract obtainFingerprint(Lnet/sf/saxon/om/NamePool;)I
.end method

.class public interface abstract Lnet/sf/saxon/om/TreeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getConfiguration()Lnet/sf/saxon/Configuration;
.end method

.method public abstract getDocumentNumber()J
.end method

.method public abstract getRootNode()Lnet/sf/saxon/om/NodeInfo;
.end method

.method public abstract getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;
.end method

.method public abstract getUnparsedEntity(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getUnparsedEntityNames()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserData(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public isMutable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTyped()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract selectID(Ljava/lang/String;Z)Lnet/sf/saxon/om/NodeInfo;
.end method

.method public abstract setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V
.end method

.method public abstract setUserData(Ljava/lang/String;Ljava/lang/Object;)V
.end method

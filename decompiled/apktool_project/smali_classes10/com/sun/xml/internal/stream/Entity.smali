.class public abstract Lcom/sun/xml/internal/stream/Entity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/xml/internal/stream/Entity$ScannedEntity;,
        Lcom/sun/xml/internal/stream/Entity$ExternalEntity;,
        Lcom/sun/xml/internal/stream/Entity$InternalEntity;
    }
.end annotation


# instance fields
.field public inExternalSubset:Z

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/Entity;->clear()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/sun/xml/internal/stream/Entity;->name:Ljava/lang/String;

    .line 5
    iput-boolean p2, p0, Lcom/sun/xml/internal/stream/Entity;->inExternalSubset:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/xml/internal/stream/Entity;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/Entity;->inExternalSubset:Z

    return-void
.end method

.method public isEntityDeclInExternalSubset()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/xml/internal/stream/Entity;->inExternalSubset:Z

    return p0
.end method

.method public abstract isExternal()Z
.end method

.method public abstract isUnparsed()Z
.end method

.method public setValues(Lcom/sun/xml/internal/stream/Entity;)V
    .locals 1

    iget-object v0, p1, Lcom/sun/xml/internal/stream/Entity;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/xml/internal/stream/Entity;->name:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/sun/xml/internal/stream/Entity;->inExternalSubset:Z

    iput-boolean p1, p0, Lcom/sun/xml/internal/stream/Entity;->inExternalSubset:Z

    return-void
.end method

.class public Lcom/sun/xml/internal/stream/Entity$InternalEntity;
.super Lcom/sun/xml/internal/stream/Entity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/internal/stream/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalEntity"
.end annotation


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/xml/internal/stream/Entity;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/Entity$InternalEntity;->clear()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p3}, Lcom/sun/xml/internal/stream/Entity;-><init>(Ljava/lang/String;Z)V

    .line 4
    iput-object p2, p0, Lcom/sun/xml/internal/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-super {p0}, Lcom/sun/xml/internal/stream/Entity;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/xml/internal/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    return-void
.end method

.method public final isExternal()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isUnparsed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setValues(Lcom/sun/xml/internal/stream/Entity$InternalEntity;)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/sun/xml/internal/stream/Entity;->setValues(Lcom/sun/xml/internal/stream/Entity;)V

    .line 4
    iget-object p1, p1, Lcom/sun/xml/internal/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/xml/internal/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    return-void
.end method

.method public setValues(Lcom/sun/xml/internal/stream/Entity;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/sun/xml/internal/stream/Entity;->setValues(Lcom/sun/xml/internal/stream/Entity;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/sun/xml/internal/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    return-void
.end method

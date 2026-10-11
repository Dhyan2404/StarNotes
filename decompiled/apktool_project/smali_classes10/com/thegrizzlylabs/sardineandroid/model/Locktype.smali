.class public Lcom/thegrizzlylabs/sardineandroid/model/Locktype;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Namespace;
    prefix = "D"
    reference = "DAV:"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
.end annotation


# instance fields
.field private write:Lcom/thegrizzlylabs/sardineandroid/model/Write;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWrite()Lcom/thegrizzlylabs/sardineandroid/model/Write;
    .locals 0

    iget-object p0, p0, Lcom/thegrizzlylabs/sardineandroid/model/Locktype;->write:Lcom/thegrizzlylabs/sardineandroid/model/Write;

    return-object p0
.end method

.method public setWrite(Lcom/thegrizzlylabs/sardineandroid/model/Write;)V
    .locals 0

    iput-object p1, p0, Lcom/thegrizzlylabs/sardineandroid/model/Locktype;->write:Lcom/thegrizzlylabs/sardineandroid/model/Write;

    return-void
.end method

.class Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/dom/DocumentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EnclosingAttr"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4847e90a0943bdf0L


# instance fields
.field node:Lorg/apache/xerces/dom/AttrImpl;

.field oldvalue:Ljava/lang/String;

.field private final synthetic this$0:Lorg/apache/xerces/dom/DocumentImpl;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/dom/DocumentImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;->this$0:Lorg/apache/xerces/dom/DocumentImpl;

    return-void
.end method

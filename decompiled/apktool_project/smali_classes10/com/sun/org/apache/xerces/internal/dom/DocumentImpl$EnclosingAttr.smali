.class Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$EnclosingAttr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EnclosingAttr"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2d33313933313333L


# instance fields
.field node:Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

.field oldvalue:Ljava/lang/String;

.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$EnclosingAttr;->this$0:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

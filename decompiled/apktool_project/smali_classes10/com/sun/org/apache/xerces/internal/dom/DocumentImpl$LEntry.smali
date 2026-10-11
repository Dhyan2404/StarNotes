.class Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$LEntry;
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
    name = "LEntry"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2d38383838313338L


# instance fields
.field listener:Lorg/w3c/dom/events/EventListener;

.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

.field type:Ljava/lang/String;

.field useCapture:Z


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$LEntry;->this$0:Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$LEntry;->type:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$LEntry;->listener:Lorg/w3c/dom/events/EventListener;

    iput-boolean p4, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl$LEntry;->useCapture:Z

    return-void
.end method

.class Lcom/sun/org/apache/xerces/internal/dom/ParentNode$UserDataRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/dom/ParentNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserDataRecord"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2d37313931353437L


# instance fields
.field fData:Ljava/lang/Object;

.field fHandler:Lorg/w3c/dom/UserDataHandler;

.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/dom/ParentNode;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/ParentNode;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode$UserDataRecord;->this$0:Lcom/sun/org/apache/xerces/internal/dom/ParentNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode$UserDataRecord;->fHandler:Lorg/w3c/dom/UserDataHandler;

    return-void
.end method

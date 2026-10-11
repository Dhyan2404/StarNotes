.class Lorg/apache/xerces/dom/ParentNode$UserDataRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/dom/ParentNode;
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

.field private final synthetic this$0:Lorg/apache/xerces/dom/ParentNode;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/dom/ParentNode;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/dom/ParentNode$UserDataRecord;->this$0:Lorg/apache/xerces/dom/ParentNode;

    iput-object p2, p0, Lorg/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/xerces/dom/ParentNode$UserDataRecord;->fHandler:Lorg/w3c/dom/UserDataHandler;

    return-void
.end method

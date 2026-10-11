.class Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray$_ObjectArray;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_ObjectArray"
.end annotation


# instance fields
.field public objects:[Ljava/lang/Object;

.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;I)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray$_ObjectArray;->this$0:Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/sql/ObjectArray$_ObjectArray;->objects:[Ljava/lang/Object;

    return-void
.end method

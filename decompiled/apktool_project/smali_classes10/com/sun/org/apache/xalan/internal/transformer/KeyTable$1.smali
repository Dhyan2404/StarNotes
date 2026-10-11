.class Lcom/sun/org/apache/xalan/internal/transformer/KeyTable$1;
.super Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;->getNodeSetDTMByKey(Lcom/sun/org/apache/xml/internal/utils/QName;Lcom/sun/org/apache/xml/internal/utils/XMLString;)Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/KeyTable$1;->this$0:Lcom/sun/org/apache/xalan/internal/transformer/KeyTable;

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xpath/internal/objects/XNodeSet;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    return-void
.end method


# virtual methods
.method public setRoot(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

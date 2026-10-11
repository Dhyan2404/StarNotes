.class Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversionInfo"
.end annotation


# instance fields
.field m_class:Ljava/lang/Class;

.field m_score:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;->m_class:Ljava/lang/Class;

    iput p2, p0, Lcom/sun/org/apache/xalan/internal/extensions/MethodResolver$ConversionInfo;->m_score:I

    return-void
.end method

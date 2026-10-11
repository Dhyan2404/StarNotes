.class public Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;
.super Lcom/sun/org/apache/xpath/internal/objects/XBoolean;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x6fe99b38bcdd7431L


# instance fields
.field private final m_val:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;-><init>(Z)V

    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;->m_val:Z

    return-void
.end method


# virtual methods
.method public equals(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z
    .locals 0

    :try_start_0
    iget-boolean p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;->m_val:Z

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->bool()Z

    move-result p1
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

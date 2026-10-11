.class public Lcom/sun/org/apache/xpath/internal/objects/XBoolean;
.super Lcom/sun/org/apache/xpath/internal/objects/XObject;
.source "SourceFile"


# static fields
.field public static final S_FALSE:Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

.field public static final S_TRUE:Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

.field static final serialVersionUID:J = -0x29258ee87c86ba91L


# instance fields
.field private final m_val:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;-><init>(Z)V

    sput-object v0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->S_TRUE:Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

    new-instance v0, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xpath/internal/objects/XBooleanStatic;-><init>(Z)V

    sput-object v0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->S_FALSE:Lcom/sun/org/apache/xpath/internal/objects/XBoolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;-><init>()V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->m_val:Z

    .line 5
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->m_val:Z

    return-void
.end method


# virtual methods
.method public bool()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->m_val:Z

    return p0
.end method

.method public equals(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->equals(Lcom/sun/org/apache/xpath/internal/objects/XObject;)Z

    move-result p0

    return p0

    :cond_0
    :try_start_0
    iget-boolean p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->m_val:Z

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->bool()Z

    move-result p1
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 0

    const-string p0, "#BOOLEAN"

    return-object p0
.end method

.method public num()D
    .locals 2

    iget-boolean p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->m_val:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public object()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    iget-boolean v1, p0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->m_val:Z

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XObject;->m_obj:Ljava/lang/Object;

    return-object p0
.end method

.method public str()Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xpath/internal/objects/XBoolean;->m_val:Z

    if-eqz p0, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    return-object p0
.end method

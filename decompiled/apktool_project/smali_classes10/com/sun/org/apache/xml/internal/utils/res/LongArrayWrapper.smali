.class public Lcom/sun/org/apache/xml/internal/utils/res/LongArrayWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private m_long:[J


# direct methods
.method public constructor <init>([J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/res/LongArrayWrapper;->m_long:[J

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/res/LongArrayWrapper;->m_long:[J

    array-length p0, p0

    return p0
.end method

.method public getLong(I)J
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/res/LongArrayWrapper;->m_long:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

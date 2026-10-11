.class public Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private m_char:[C


# direct methods
.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;->m_char:[C

    return-void
.end method


# virtual methods
.method public getChar(I)C
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;->m_char:[C

    aget-char p0, p0, p1

    return p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/res/CharArrayWrapper;->m_char:[C

    array-length p0, p0

    return p0
.end method

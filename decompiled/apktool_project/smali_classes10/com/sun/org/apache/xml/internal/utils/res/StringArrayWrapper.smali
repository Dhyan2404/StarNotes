.class public Lcom/sun/org/apache/xml/internal/utils/res/StringArrayWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private m_string:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/res/StringArrayWrapper;->m_string:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/res/StringArrayWrapper;->m_string:[Ljava/lang/String;

    array-length p0, p0

    return p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/res/StringArrayWrapper;->m_string:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.class Lcom/sun/org/apache/xml/internal/serializer/ToStream$WritertoStringBuffer;
.super Ljava/io/Writer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/serializer/ToStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WritertoStringBuffer"
.end annotation


# instance fields
.field private final m_stringbuf:Ljava/lang/StringBuffer;

.field final synthetic this$0:Lcom/sun/org/apache/xml/internal/serializer/ToStream;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/serializer/ToStream;Ljava/lang/StringBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream$WritertoStringBuffer;->this$0:Lcom/sun/org/apache/xml/internal/serializer/ToStream;

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream$WritertoStringBuffer;->m_stringbuf:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public write(I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream$WritertoStringBuffer;->m_stringbuf:Ljava/lang/StringBuffer;

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream$WritertoStringBuffer;->m_stringbuf:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public write([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/ToStream$WritertoStringBuffer;->m_stringbuf:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method

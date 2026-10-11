.class abstract Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/convert/htmlgen/RunHandler;
.implements Ljava/io/Closeable;


# instance fields
.field LOG:Lorg/apache/logging/log4j/Logger;

.field context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;


# direct methods
.method public constructor <init>(Lorg/apache/poi/convert/xwpf/handler/XWPFContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;->LOG:Lorg/apache/logging/log4j/Logger;

    iput-object p1, p0, Lorg/apache/poi/convert/xwpf/handler/XWPFIRunHandler;->context:Lorg/apache/poi/convert/xwpf/handler/XWPFContext;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.class abstract Lcom/sun/org/apache/bcel/internal/util/ClassPath$PathEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/bcel/internal/util/ClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PathEntry"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sun/org/apache/bcel/internal/util/ClassPath$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/util/ClassPath$PathEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getClassFile(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/util/ClassPath$ClassFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

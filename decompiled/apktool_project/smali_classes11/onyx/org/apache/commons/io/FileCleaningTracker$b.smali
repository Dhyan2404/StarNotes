.class public final Lonyx/org/apache/commons/io/FileCleaningTracker$b;
.super Ljava/lang/ref/PhantomReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/FileCleaningTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lonyx/org/apache/commons/io/FileDeleteStrategy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lonyx/org/apache/commons/io/FileDeleteStrategy;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lonyx/org/apache/commons/io/FileDeleteStrategy;",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3, p4}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p1, p0, Lonyx/org/apache/commons/io/FileCleaningTracker$b;->a:Ljava/lang/String;

    if-nez p2, :cond_0

    sget-object p2, Lonyx/org/apache/commons/io/FileDeleteStrategy;->NORMAL:Lonyx/org/apache/commons/io/FileDeleteStrategy;

    :cond_0
    iput-object p2, p0, Lonyx/org/apache/commons/io/FileCleaningTracker$b;->b:Lonyx/org/apache/commons/io/FileDeleteStrategy;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lonyx/org/apache/commons/io/FileCleaningTracker$b;->b:Lonyx/org/apache/commons/io/FileDeleteStrategy;

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lonyx/org/apache/commons/io/FileCleaningTracker$b;->a:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lonyx/org/apache/commons/io/FileDeleteStrategy;->deleteQuietly(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/FileCleaningTracker$b;->a:Ljava/lang/String;

    return-object p0
.end method

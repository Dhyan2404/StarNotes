.class public Lonyx/org/apache/commons/io/FileDeleteStrategy$a;
.super Lonyx/org/apache/commons/io/FileDeleteStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/FileDeleteStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Force"

    invoke-direct {p0, v0}, Lonyx/org/apache/commons/io/FileDeleteStrategy;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doDelete(Ljava/io/File;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lonyx/org/apache/commons/io/FileUtils;->forceDelete(Ljava/io/File;)V

    const/4 p0, 0x1

    return p0
.end method

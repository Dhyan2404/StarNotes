.class public Lorg/apache/poi/sl/PPTFactory$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/PPTFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private filePath:Ljava/lang/String;

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/poi/sl/PPTFactory;
    .locals 2

    new-instance v0, Lorg/apache/poi/sl/PPTFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/PPTFactory;-><init>(Lorg/apache/poi/sl/PPTFactory$1;)V

    iget-object v1, p0, Lorg/apache/poi/sl/PPTFactory$Builder;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/poi/sl/PPTFactory;->access$102(Lorg/apache/poi/sl/PPTFactory;Ljava/lang/String;)Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/poi/sl/PPTFactory$Builder;->password:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/apache/poi/sl/PPTFactory;->access$202(Lorg/apache/poi/sl/PPTFactory;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public setFilePath(Ljava/lang/String;)Lorg/apache/poi/sl/PPTFactory$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/PPTFactory$Builder;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lorg/apache/poi/sl/PPTFactory$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/PPTFactory$Builder;->password:Ljava/lang/String;

    return-object p0
.end method

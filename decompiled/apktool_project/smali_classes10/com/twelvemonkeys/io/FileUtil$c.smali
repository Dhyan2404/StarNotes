.class public final Lcom/twelvemonkeys/io/FileUtil$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twelvemonkeys/io/FileUtil;->visitFiles(Ljava/io/File;Ljava/io/FileFilter;Lcom/twelvemonkeys/util/Visitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljava/io/FileFilter;

.field public final synthetic f:Lcom/twelvemonkeys/util/Visitor;


# direct methods
.method public constructor <init>(Ljava/io/FileFilter;Lcom/twelvemonkeys/util/Visitor;)V
    .locals 0

    iput-object p1, p0, Lcom/twelvemonkeys/io/FileUtil$c;->e:Ljava/io/FileFilter;

    iput-object p2, p0, Lcom/twelvemonkeys/io/FileUtil$c;->f:Lcom/twelvemonkeys/util/Visitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    iget-object v0, p0, Lcom/twelvemonkeys/io/FileUtil$c;->e:Ljava/io/FileFilter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/twelvemonkeys/io/FileUtil$c;->f:Lcom/twelvemonkeys/util/Visitor;

    invoke-interface {p0, p1}, Lcom/twelvemonkeys/util/Visitor;->visit(Ljava/lang/Object;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

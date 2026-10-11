.class public final synthetic Lcom/sunia/HTREnginev2/sgj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic e:Ljava/util/regex/Pattern;


# direct methods
.method public synthetic constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sgj;->e:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sgj;->e:Ljava/util/regex/Pattern;

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/tool/MavenPlugin;->b(Ljava/util/regex/Pattern;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

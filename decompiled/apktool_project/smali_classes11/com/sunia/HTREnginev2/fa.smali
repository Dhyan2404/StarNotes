.class public final synthetic Lcom/sunia/HTREnginev2/fa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Ljava/io/File;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fa;->e:Ljava/io/File;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/fa;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fa;->e:Ljava/io/File;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fa;->f:Ljava/lang/String;

    check-cast p1, Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/filefilter/AndFileFilter;->c(Ljava/io/File;Ljava/lang/String;Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)Z

    move-result p0

    return p0
.end method

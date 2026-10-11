.class public final synthetic Lcom/sunia/HTREnginev2/lzk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lonyx/org/apache/commons/io/file/DeleteOption;

    invoke-static {p1}, Lonyx/org/apache/commons/io/file/PathUtils;->b(Lonyx/org/apache/commons/io/file/DeleteOption;)Z

    move-result p0

    return p0
.end method

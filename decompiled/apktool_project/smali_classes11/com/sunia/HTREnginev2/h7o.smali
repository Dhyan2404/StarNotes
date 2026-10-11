.class public final Lcom/sunia/HTREnginev2/h7o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/serialization/ClassNameMatcher;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/h7o;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/h7o;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lonyx/org/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

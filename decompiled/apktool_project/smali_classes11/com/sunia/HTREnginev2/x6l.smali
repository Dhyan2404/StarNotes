.class public final synthetic Lcom/sunia/HTREnginev2/x6l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/x6l;->e:Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/x6l;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/x6l;->e:Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/x6l;->f:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;->a(Lonyx/org/apache/commons/io/filefilter/PrefixFileFilter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

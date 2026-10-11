.class public final synthetic Lcom/sunia/HTREnginev2/thk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lonyx/org/apache/commons/io/filefilter/OrFileFilter;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/filefilter/OrFileFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/thk;->e:Lonyx/org/apache/commons/io/filefilter/OrFileFilter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/thk;->e:Lonyx/org/apache/commons/io/filefilter/OrFileFilter;

    check-cast p1, Lonyx/org/apache/commons/io/filefilter/IOFileFilter;

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/filefilter/OrFileFilter;->addFileFilter(Lonyx/org/apache/commons/io/filefilter/IOFileFilter;)V

    return-void
.end method

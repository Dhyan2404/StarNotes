.class public final synthetic Lcom/sunia/HTREnginev2/eei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic e:Lonyx/org/apache/commons/io/function/IOComparator;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/function/IOComparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/eei;->e:Lonyx/org/apache/commons/io/function/IOComparator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/eei;->e:Lonyx/org/apache/commons/io/function/IOComparator;

    invoke-static {p0, p1, p2}, Lonyx/org/apache/commons/io/function/IOStream;->u(Lonyx/org/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

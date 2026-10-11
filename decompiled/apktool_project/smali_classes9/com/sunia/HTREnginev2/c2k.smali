.class public final synthetic Lcom/sunia/HTREnginev2/c2k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/c2k;->e:Z

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/c2k;->e:Z

    check-cast p1, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    check-cast p2, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/utils/NoteSortHelper;->a(ZLcom/onyx/galaxy/note/category/data/NotePageBean;Lcom/onyx/galaxy/note/category/data/NotePageBean;)I

    move-result p0

    return p0
.end method

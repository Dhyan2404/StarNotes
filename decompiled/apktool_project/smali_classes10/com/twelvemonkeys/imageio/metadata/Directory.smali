.class public interface abstract Lcom/twelvemonkeys/imageio/metadata/Directory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/twelvemonkeys/imageio/metadata/Entry;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract add(Lcom/twelvemonkeys/imageio/metadata/Entry;)Z
.end method

.method public abstract getEntryByFieldName(Ljava/lang/String;)Lcom/twelvemonkeys/imageio/metadata/Entry;
.end method

.method public abstract getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;
.end method

.method public abstract isReadOnly()Z
.end method

.method public abstract remove(Ljava/lang/Object;)Z
.end method

.method public abstract size()I
.end method

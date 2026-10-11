package com.onyx.engine.sdk;

import com.onyx.engine.sdk.Metadata;
import java.util.Collections;
import java.util.List;
import java.util.function.Supplier;

/* loaded from: classes8.dex */
public class Metadata {
    private List<String> authors;
    private String contributor;
    private String coverMetaID;
    private String coverage;
    private String date;
    private String description;
    private String format;
    private String identifier;
    private String isbn;
    private String language;
    private String publisher;
    private String relation;
    private String rights;
    private List<Series> series;
    private String source;
    private List<String> subjects;
    private String subtitle;
    private String title;
    private String type;

    /* loaded from: classes8.dex */
    public static class Series {
        String index;
        String name;

        public String getIndex() {
            return this.index;
        }

        public String getName() {
            return this.name;
        }

        public Series setIndex(String str) {
            this.index = str;
            return this;
        }

        public Series setName(String str) {
            this.name = str;
            return this;
        }
    }

    public static Metadata fromJson(String str) {
        return (Metadata) JsonUtils.fromJson(str, Metadata.class, new Supplier() { // from class: com.sunia.HTREnginev2.hnj
            @Override // java.util.function.Supplier
            public final Object get() {
                return new Metadata();
            }
        });
    }

    public List<String> getAuthors() {
        return this.authors;
    }

    public String getContributor() {
        return this.contributor;
    }

    public String getCoverMetaID() {
        return this.coverMetaID;
    }

    public String getCoverage() {
        return this.coverage;
    }

    public String getDate() {
        return this.date;
    }

    public String getDescription() {
        return this.description;
    }

    public String getFormat() {
        return this.format;
    }

    public String getIdentifier() {
        return this.identifier;
    }

    public String getIsbn() {
        return this.isbn;
    }

    public String getLanguage() {
        return this.language;
    }

    public String getPublisher() {
        return this.publisher;
    }

    public String getRelation() {
        return this.relation;
    }

    public String getRights() {
        return this.rights;
    }

    public List<Series> getSeries() {
        return this.series;
    }

    public String getSeriesJson() {
        List<Series> list = this.series;
        return list == null ? JsonUtils.toJson(Collections.emptyList()) : JsonUtils.toJson(list);
    }

    public String getSource() {
        return this.source;
    }

    public List<String> getSubjects() {
        return this.subjects;
    }

    public String getSubtitle() {
        return this.subtitle;
    }

    public String getTitle() {
        return this.title;
    }

    public String getType() {
        return this.type;
    }

    public Metadata setAuthors(List<String> list) {
        this.authors = list;
        return this;
    }

    public Metadata setContributor(String str) {
        this.contributor = str;
        return this;
    }

    public Metadata setCoverMetaID(String str) {
        this.coverMetaID = str;
        return this;
    }

    public Metadata setCoverage(String str) {
        this.coverage = str;
        return this;
    }

    public Metadata setDate(String str) {
        this.date = str;
        return this;
    }

    public Metadata setDescription(String str) {
        this.description = str;
        return this;
    }

    public Metadata setFormat(String str) {
        this.format = str;
        return this;
    }

    public Metadata setIdentifier(String str) {
        this.identifier = str;
        return this;
    }

    public Metadata setIsbn(String str) {
        this.isbn = str;
        return this;
    }

    public Metadata setLanguage(String str) {
        this.language = str;
        return this;
    }

    public Metadata setPublisher(String str) {
        this.publisher = str;
        return this;
    }

    public Metadata setRelation(String str) {
        this.relation = str;
        return this;
    }

    public Metadata setRights(String str) {
        this.rights = str;
        return this;
    }

    public Metadata setSeries(List<Series> list) {
        this.series = list;
        return this;
    }

    public Metadata setSource(String str) {
        this.source = str;
        return this;
    }

    public Metadata setSubjects(List<String> list) {
        this.subjects = list;
        return this;
    }

    public Metadata setSubtitle(String str) {
        this.subtitle = str;
        return this;
    }

    public Metadata setTitle(String str) {
        this.title = str;
        return this;
    }

    public Metadata setType(String str) {
        this.type = str;
        return this;
    }
}

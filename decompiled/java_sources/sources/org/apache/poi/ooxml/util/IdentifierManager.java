package org.apache.poi.ooxml.util;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.ListIterator;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes12.dex */
public class IdentifierManager {
    public static final long MAX_ID = 9223372036854775806L;
    public static final long MIN_ID = 0;
    private final long lowerbound;
    private LinkedList<Segment> segments;
    private final long upperbound;

    /* loaded from: classes12.dex */
    public static class Segment {
        private long end;
        private long start;

        public Segment(long j, long j2) {
            this.start = j;
            this.end = j2;
        }

        public String toString() {
            return IteratorUtils.f104923a + this.start + "; " + this.end + IteratorUtils.f104924b;
        }
    }

    public IdentifierManager(long j, long j2) {
        if (j > j2) {
            throw new IllegalArgumentException("lowerbound must not be greater than upperbound, had " + j + CloudStorageConstants.OPERATION_AND + j2);
        }
        if (j < 0) {
            throw new IllegalArgumentException("lowerbound must be greater than or equal to " + Long.toString(0L));
        }
        if (j2 <= 9223372036854775806L) {
            this.lowerbound = j;
            this.upperbound = j2;
            LinkedList<Segment> linkedList = new LinkedList<>();
            this.segments = linkedList;
            linkedList.add(new Segment(j, j2));
            return;
        }
        throw new IllegalArgumentException("upperbound must be less than or equal to " + Long.toString(9223372036854775806L) + " but had " + j2);
    }

    private void verifyIdentifiersLeft() {
        if (this.segments.isEmpty()) {
            throw new IllegalStateException("No identifiers left");
        }
    }

    public long getRemainingIdentifiers() {
        Iterator<Segment> it2 = this.segments.iterator();
        long j = 0;
        while (it2.hasNext()) {
            Segment next = it2.next();
            j = (j - next.start) + next.end + 1;
        }
        return j;
    }

    public boolean release(long j) {
        long j2 = this.lowerbound;
        if (j >= j2) {
            long j3 = this.upperbound;
            if (j <= j3) {
                if (j == j3) {
                    Segment last = this.segments.getLast();
                    long j4 = last.end;
                    long j5 = this.upperbound;
                    if (j4 == j5 - 1) {
                        last.end = j5;
                        return true;
                    }
                    long j6 = last.end;
                    long j7 = this.upperbound;
                    if (j6 == j7) {
                        return false;
                    }
                    this.segments.add(new Segment(j7, j7));
                    return true;
                }
                if (j == j2) {
                    Segment first = this.segments.getFirst();
                    long j8 = first.start;
                    long j9 = this.lowerbound;
                    if (j8 == 1 + j9) {
                        first.start = j9;
                        return true;
                    }
                    long j10 = first.start;
                    long j11 = this.lowerbound;
                    if (j10 == j11) {
                        return false;
                    }
                    this.segments.addFirst(new Segment(j11, j11));
                    return true;
                }
                long j12 = j + 1;
                long j13 = j - 1;
                ListIterator<Segment> listIterator = this.segments.listIterator();
                while (true) {
                    if (!listIterator.hasNext()) {
                        break;
                    }
                    Segment next = listIterator.next();
                    if (next.end >= j13) {
                        if (next.start > j12) {
                            listIterator.previous();
                            listIterator.add(new Segment(j, j));
                            return true;
                        }
                        if (next.start == j12) {
                            next.start = j;
                            return true;
                        }
                        if (next.end == j13) {
                            next.end = j;
                            if (listIterator.hasNext()) {
                                Segment next2 = listIterator.next();
                                if (next2.start == next.end + 1) {
                                    next.end = next2.end;
                                    listIterator.remove();
                                }
                            }
                            return true;
                        }
                    }
                }
                return false;
            }
        }
        throw new IllegalArgumentException("Value for parameter 'id' was out of bounds, had " + j + ", but should be within [" + this.lowerbound + ":" + this.upperbound + IteratorUtils.f104924b);
    }

    public long reserve(long j) {
        if (j < this.lowerbound || j > this.upperbound) {
            throw new IllegalArgumentException("Value for parameter 'id' was out of bounds, had " + j + ", but should be within [" + this.lowerbound + ":" + this.upperbound + IteratorUtils.f104924b);
        }
        verifyIdentifiersLeft();
        if (j == this.upperbound) {
            Segment last = this.segments.getLast();
            long j2 = last.end;
            long j3 = this.upperbound;
            if (j2 != j3) {
                return reserveNew();
            }
            last.end = j3 - 1;
            if (last.start > last.end) {
                this.segments.removeLast();
            }
            return j;
        }
        if (j == this.lowerbound) {
            Segment first = this.segments.getFirst();
            long j4 = first.start;
            long j5 = this.lowerbound;
            if (j4 != j5) {
                return reserveNew();
            }
            first.start = j5 + 1;
            if (first.end < first.start) {
                this.segments.removeFirst();
            }
            return j;
        }
        ListIterator<Segment> listIterator = this.segments.listIterator();
        while (true) {
            if (!listIterator.hasNext()) {
                break;
            }
            Segment next = listIterator.next();
            if (next.end >= j) {
                if (next.start <= j) {
                    if (next.start == j) {
                        next.start = 1 + j;
                        if (next.end < next.start) {
                            listIterator.remove();
                        }
                        return j;
                    }
                    if (next.end != j) {
                        listIterator.add(new Segment(j + 1, next.end));
                        next.end = j - 1;
                        return j;
                    }
                    next.end = j - 1;
                    if (next.start > next.end) {
                        listIterator.remove();
                    }
                    return j;
                }
            }
        }
        return reserveNew();
    }

    public long reserveNew() {
        verifyIdentifiersLeft();
        Segment first = this.segments.getFirst();
        long j = first.start;
        first.start++;
        if (first.start > first.end) {
            this.segments.removeFirst();
        }
        return j;
    }
}

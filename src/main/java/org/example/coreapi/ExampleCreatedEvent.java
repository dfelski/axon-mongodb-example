package org.example.coreapi;

import org.axonframework.modelling.command.TargetAggregateIdentifier;

import java.util.UUID;

public class ExampleCreatedEvent {

    @TargetAggregateIdentifier
    private UUID id;

    private ExampleCreatedEvent(){}

    public ExampleCreatedEvent(UUID id){
        this.id = id;
    }

    public UUID getId() {
        return id;
    }

}
